//
//  ViewController.swift
//  TestCell
//
//  Created by Kosuke Matsuda on 2017/03/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var dataSource: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let id = String(describing: CustomCell.self)
        let nib = UINib(nibName: id, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: id)
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = UITableViewAutomaticDimension
        dataSource = mock()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tapNaviButton(sender:)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tapNaviButton(sender: UIBarButtonItem) {
        if let ctr = storyboard?.instantiateViewController(withIdentifier: "Controller") {
            navigationController?.pushViewController(ctr, animated: true)
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = String(describing: CustomCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! CustomCell
        let person = dataSource[indexPath.row]
        cell.label1.text = person.0
        cell.label2.text = person.1
        cell.label3.text = person.2
        return cell
    }
}

extension ViewController {
    func mock() -> [Person] {
        return [
            (
                "testtesttesttesttest\ntesttest",
                "あああああああああああああいいいいいいいいいい\nううううううううううええええええええ\nかきく",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "ううううううううううえええええ",
                "aaaaaaaaaaabbbbbbbbbbbbb\nccccccccccccdddddddddddddddddddddd\ne\nf",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "あああああああああああああいいいいいいいいいい\nううううううううううええええええええ\nかきく",
                nil,
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "abfdfasdfasfa",
                "feofoafjaieia\neifaoeoafna\nefiii",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "testtesttesttesttest\ntesttest",
                "あああああああああああああいいいいいいいいいい\nううううううううううええええええええ\nかきく",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "ううううううううううえええええ",
                "aaaaaaaaaaabbbbbbbbbbbbb\nccccccccccccdddddddddddddddddddddd\ne\nf",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "あああああああああああああいいいいいいいいいい\nううううううううううええええええええ\nかきく",
                "",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "abfdfasdfasfa",
                "feofoafjaieia\neifaoeoafna\nefiii",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "abfdfasdfasfa",
                "feofoafjaieia\neifaoeoafna\nefiii",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "ううううううううううえええええ",
                "aaaaaaaaaaabbbbbbbbbbbbb\nccccccccccccdddddddddddddddddddddd\ne\nf",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "testtesttesttesttest\ntesttest",
                "あああああああああああああいいいいいいいいいい\nううううううううううええええええええ\nかきく",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "testtesttesttesttest\ntesttest",
                "あああああああああああああいいいいいいいいいい\nううううううううううええええええええ\nかきく",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "ううううううううううえええええ",
                "aaaaaaaaaaabbbbbbbbbbbbb\nccccccccccccdddddddddddddddddddddd\ne\nf",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "あああああああああああああいいいいいいいいいい\nううううううううううええええええええ\nかきく",
                "",
                "notesnotenotes\nnotes\nkeo"
            ),
            (
                "abfdfasdfasfa",
                "feofoafjaieia\neifaoeoafna\nefiii",
                "notesnotenotes\nnotes\nkeo"
            ),
        ]
    }
}
typealias Person = (String?, String?, String?)
