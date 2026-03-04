/*------------------------------------------------------------------------
  File        : ItemDataset.i
  Purpose     : Dataset definition for Item entity
  Syntax      : {business/ItemDataset.i}
  Description : Defines temp-table and dataset structures for Item business entity
  Author(s)   : SteveSouthwell
  Created     : Tue Mar 04 15:20:00 CST 2026
  Notes       : Used by ItemEntity class for data access operations
----------------------------------------------------------------------*/

DEFINE TEMP-TABLE ttItem BEFORE-TABLE bttItem
    FIELD ItemNum AS INTEGER LABEL "Item Num"
    FIELD ItemName AS CHARACTER LABEL "Item Name"
    FIELD Price AS DECIMAL LABEL "Price"
    FIELD OnHand AS INTEGER LABEL "On Hand"
    FIELD Allocated AS INTEGER LABEL "Allocated"
    FIELD ReOrder AS INTEGER LABEL "Re Order"
    FIELD OnOrder AS INTEGER LABEL "On Order"
    FIELD CatPage AS INTEGER LABEL "Cat Page"
    FIELD CatDescription AS CHARACTER LABEL "Cat Description"
    FIELD Category1 AS CHARACTER LABEL "Category1"
    FIELD Category2 AS CHARACTER LABEL "Category2"
    FIELD Special AS CHARACTER LABEL "Special"
    FIELD Weight AS DECIMAL LABEL "Weight"
    FIELD Minqty AS INTEGER LABEL "Minqty"
    INDEX ItemNum IS PRIMARY UNIQUE ItemNum ASCENDING.

DEFINE DATASET dsItem FOR ttItem.
