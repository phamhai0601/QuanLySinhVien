<?php

use yii\db\Migration;

/**
 * Class m210613_103327_gio_hoc
 */
class m210613_103327_gio_hoc extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
		$this->execute("CREATE TABLE `quan_ly_sinh_vien`.`gio_hoc` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `gio_bat_dau` VARCHAR(255) NOT NULL , `gio_ket_thuc` VARCHAR(255) NOT NULL , `created_at` INT(11) NOT NULL , PRIMARY KEY (`id`)) ENGINE = MyISAM;");
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210613_103327_gio_hoc cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210613_103327_gio_hoc cannot be reverted.\n";

        return false;
    }
    */
}
