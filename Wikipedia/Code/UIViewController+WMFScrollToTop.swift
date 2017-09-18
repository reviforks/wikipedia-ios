extension UITableViewController {
    fileprivate func scrollToFirstIndexPath() {
        tableView.scrollToRow(at: IndexPath(row: 0, section: 0) , at: .top, animated: true)
    }
}

extension UICollectionViewController {
    fileprivate func scrollToFirstIndexPath() {
        collectionView?.scrollToItem(at: IndexPath(row: 0, section: 0) , at: .top, animated: true)
    }
}

extension WMFArticleListTableViewController {
    @objc func scrollToTop(_ isScrollable: Bool) {
        guard isScrollable else { return }
        scrollToFirstIndexPath()
    }
}

extension ArticleCollectionViewController {
    @objc func scrollToTop(_ isScrollable: Bool) {
        guard isScrollable else { return }
        scrollToFirstIndexPath()
    }
}

extension ExploreViewController {
    @objc func scrollToTop() {
        guard collectionViewController.canScrollToTop else { return }
        collectionViewController.scrollToFirstIndexPath()
        showSearchBar(animated: true)
    }
}
