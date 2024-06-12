<?php
echo "Hello, libSQL!";

try {
    $db = new LibSQL('file:database.db');
    echo "<p>Connected to libSQL database successfully.</p>";
} catch (Exception $e) {
    echo "<p>Connection failed: " . $e->getMessage() . "</p>";
}
