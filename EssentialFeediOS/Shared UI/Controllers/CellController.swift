import UIKit

public struct CellController {
    let dataSource: UITableViewDataSource
    let dataSourcePrefetching: UITableViewDataSourcePrefetching?
    let delegate: UITableViewDelegate?
    
    public init(_ dataSource: UITableViewDataSource & UITableViewDataSourcePrefetching & UITableViewDelegate) {
        self.dataSource = dataSource
        self.dataSourcePrefetching = dataSource
        self.delegate = dataSource
    }
    
    public init(_ dataSource: UITableViewDataSource) {
        self.dataSource = dataSource
        self.dataSourcePrefetching = nil
        self.delegate = nil
    }
}
