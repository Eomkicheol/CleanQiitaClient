//
//  ItemListRouting.swift
//  CleanQiitaClient
//
//  Created by Takahiro Nishinobu on 2016/09/25.
//  Copyright © 2016年 hachinobu. All rights reserved.
//

import Foundation

public protocol ItemListRouting: Routing {
    func segueItem(id: String)
    func presentErrorAlert(message: String)
}

//public class AllItemListRoutingImpl: ItemListRouting {
//    
//    weak public var viewController: UIViewController? {
//        didSet {
//            viewController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//        }
//    }
//    
//    public func segueItem(id: String) {
//        
//        let stockersRepository = StockersRepositoryImpl.shared
//        let stockRepository = StockItemRepositoryImpl.shared
//        let itemRepository = ItemRepositoryImpl.shared
//        let useCase = AllItemUseCaseImpl(stockItemRepository: stockRepository, stockersRepository: stockersRepository, itemRepository: itemRepository, itemId: id)
//        
//        let presenter = ItemPresenterImplFromAllItem(useCase: useCase)
//        
//        let vc = UIStoryboard(name: "ItemScreen", bundle: Bundle(for: ItemViewController.self)).instantiateInitialViewController() as! ItemViewController
//        let routing = ItemRoutingImpl()
//        routing.viewController = vc
//        
//        vc.injection(presenter: presenter, routing: routing)
//        viewController?.navigationController?.pushViewController(vc, animated: true)
//        
//    }
//    
//    public func presentErrorAlert(message: String) {
//        let alertController = UIAlertController(title: "エラー", message: message, preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alertController.addAction(action)
//        viewController?.navigationController?.present(alertController, animated: true, completion: nil)
//    }
//    
//}

//public class UserItemListRoutingImpl: AllItemListRoutingImpl {
//    
//    override public func segueItem(id: String) {
//        
//        let stockersRepository = StockersRepositoryImpl.shared
//        let stockRepository = StockItemRepositoryImpl.shared
//        let itemRepository = ItemRepositoryImpl.shared
//        let useCase = AllItemUseCaseImpl(stockItemRepository: stockRepository, stockersRepository: stockersRepository, itemRepository: itemRepository, itemId: id)
//        
//        //ItemPresenterImplFromUserItemを使うとタップした時にRoutingを呼ばないPresenter
////        let presenter = ItemPresenterImplFromUserItem(useCase: useCase)
//        
//        let presenter = ItemPresenterImplFromAllItem(useCase: useCase)
//        
//        let vc = UIStoryboard(name: "ItemScreen", bundle: Bundle(for: ItemViewController.self)).instantiateInitialViewController() as! ItemViewController
//        let routing = UserItemRoutingImpl()
//        routing.viewController = vc
//        
//        vc.injection(presenter: presenter, routing: routing)
//        viewController?.navigationController?.pushViewController(vc, animated: true)
//        
//    }
//    
//}
