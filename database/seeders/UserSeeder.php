<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;


use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $faker = Faker::create();

        foreach (range(1, 10) as $index) {
            $user = DB::table('users')->insertGetId([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'password' => Hash::make('password'), // Cambia 'password' a la contraseña que desees para los usuarios ficticios.
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Genera un número aleatorio de tareas para cada usuario (entre 1 y 5)
            $numberOfTasks = rand(1, 5);

            for ($i = 1; $i <= $numberOfTasks; $i++) {
                DB::table('tasks')->insert([
                    'user_id' => $user,
                    'title' => $faker->sentence,
                    'description' => $faker->paragraph,
                    'completed' => $faker->boolean,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
