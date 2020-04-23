<?php

use yii\db\Migration;

/**
 * Class m200423_112636_add_test_data_to_task_table
 */
class m200423_112636_add_test_data_to_task_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $faker = \Faker\Factory::create();

        $rows = [];

        for ($i = 1; $i <= 100; $i++) {
            $rows[] = [
                time(),
                $faker->sentence(1),
                rand(1, 2),
                $faker->realText(rand(50, 100)),
                $faker->date('Y-m-d'),
                $faker->date('Y-m-d'),
            ];
        }

        $this->batchInsert('{{%task}}', [
            'created_at',
            'type',
            'status',
            'description',
            'started_at',
            'ended_at',
        ], $rows);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->truncateTable('{{%task}}');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m200423_112636_add_test_data_to_task_table cannot be reverted.\n";

        return false;
    }
    */
}
