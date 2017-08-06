<?php
/**
 * Created by PhpStorm.
 * User: Alex Pryakhin
 * Date: 18.04.2017
 * Time: 16:30
 */

namespace simpleengine\controllers;
use simpleengine\models\Product;
use simpleengine\models\User;

class DefaultController extends AbstractController
{
    public function actionIndex()
    {



        $user = new User();
        $product = new Product();

        echo $this->render("index", [


            "isAuth" => $user->userIsAuth(),
            "user" => $user->getFirstname(),
            "username" => $user->userIsAuth(),
           /* "menuList" => $model->menu(),*/
            "usersItems" => $user->getUsersBasket(),
            "isAdmin" => $user->getRoles(),
            "categories" => $product->getCategories(),
            "catalog"=> $product->getCatalog(),

        ]);
       
    }
}