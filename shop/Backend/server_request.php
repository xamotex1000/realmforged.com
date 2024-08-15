<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $username = $_POST['un'] ?? null;
    $itemid = $_POST['id'] ?? null;
    $cost = $_POST['price'] ?? null;
    $amt= $_POST['amt'] ?? null;
    $type = $_POST['type'] ?? null;
    $enchantments = $_POST['enchants'] ?? null;

    if ($type == "buy") {
        $type = 0;
    } elseif ($type == "sell") {
        $type = 1;
    } elseif ($type == "item") {
        $type = 2;
    }
    $price = intval($cost);
    $amount = intval($amt);

    $fileName1 = '../Data/data.json';
    $fileName2 = '../Data/stock_data.json';
    $jsonFile = json_decode(file_get_contents($fileName1), true);
    $stockFile = json_decode(file_get_contents($fileName2), true);
    if($enchantments == null) {
        $enchantments = [];
    }
    if ($type == 2){
        $sampleListing = array(
            "user" => "default",
            "price" => 0,
            "amount" => 0,
            "type" => 1,
            "enchantments" => []
        );
        $newData = array(
            "itemId" => $itemid,
            "listings" => [$sampleListing]
        );
        $jsonFile['items'][] = $newData;
    } elseif ($type == 1 || $type == 2){
        $newData = array(
            "user" => $username,
            "price" => $price,
            "amount" => $amount,
            "type" => $type,
            "enchantments" => $enchantments
        );

        $found = false;
        foreach ($jsonFile['items'] as &$item) {
            if ($item['itemId'] === $itemid) {
                $item['listings'][] = $newData;
                $found = true;
                break;
            }
        }
    }

    $newJsonData = json_encode($jsonFile, JSON_PRETTY_PRINT);
    if (file_put_contents($fileName1, $newJsonData) !== false) {
        echo "JSON file has been updated successfully.";
    } else {
        echo "Error updating JSON file.";
    }
} else {
    echo 'Unsupported request method.';
}
?>
