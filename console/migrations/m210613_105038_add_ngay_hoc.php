<?php

use yii\db\Migration;

/**
 * Class m210613_105038_add_ngay_hoc
 */
class m210613_105038_add_ngay_hoc extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
		$this->execute("INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES (NULL, 'Monday', '1623259985')");
		$this->execute("INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES (NULL, 'Tuesday', '1623259985')");
		$this->execute("INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES (NULL, 'Wednesday', '1623259985')");
		$this->execute("INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES (NULL, 'Thursday', '1623259985')");
		$this->execute("INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES (NULL, 'Friday', '1623259985')");
		$this->execute("INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES (NULL, 'Saturday', '1623259985')");
		$this->execute("INSERT INTO `ngay_hoc` (`id`, `ngay`, `created_at`) VALUES (NULL, 'Sunday', '1623259985')");
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210613_105038_add_ngay_hoc cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210613_105038_add_ngay_hoc cannot be reverted.\n";

        return false;
    }
    */
}
