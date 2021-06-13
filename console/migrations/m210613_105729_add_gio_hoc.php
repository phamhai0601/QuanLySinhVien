<?php

use yii\db\Migration;

/**
 * Class m210613_105729_add_gio_hoc
 */
class m210613_105729_add_gio_hoc extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
		$this->execute("INSERT INTO `gio_hoc` (`id`, `gio_bat_dau`, `gio_ket_thuc`, `created_at`) VALUES (NULL, '12:45 AM', '5:25 PM', '1623259985');");
		$this->execute("INSERT INTO `gio_hoc` (`id`, `gio_bat_dau`, `gio_ket_thuc`, `created_at`) VALUES (NULL, '6:45 AM', '11:25 AM', '1623259985');");
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210613_105729_add_gio_hoc cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210613_105729_add_gio_hoc cannot be reverted.\n";

        return false;
    }
    */
}
