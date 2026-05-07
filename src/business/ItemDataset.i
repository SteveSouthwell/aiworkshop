/*------------------------------------------------------------------------
  File        : ItemDataset.i
  Purpose     : Dataset definition for Item entity
  Syntax      : 
  Description : 
  Author(s)   : 
  Created     : 
  Notes       : 
----------------------------------------------------------------------*/

/* Define temp-table for Item */
DEFINE TEMP-TABLE ttItem BEFORE-TABLE bttItem
    FIELD ItemNum       AS INTEGER   INITIAL "0" LABEL "Item Num"
    FIELD ItemName      AS CHARACTER LABEL "Item Name"
    FIELD CatPage       AS INTEGER   INITIAL "0" LABEL "Cat Page"
    FIELD Price         AS DECIMAL   INITIAL "0" LABEL "Price"
    FIELD OnHand        AS INTEGER   INITIAL "0" LABEL "On Hand"
    FIELD Allocated     AS INTEGER   INITIAL "0" LABEL "Allocated"
    FIELD ReOrderPoint  AS INTEGER   INITIAL "0" LABEL "Re-Order Point"
    FIELD OnOrder       AS INTEGER   INITIAL "0" LABEL "On Order"
    FIELD Weight        AS DECIMAL   INITIAL "0" LABEL "Weight"
    INDEX ItemNum IS PRIMARY UNIQUE ItemNum ASCENDING.

/* Define dataset for Item */
DEFINE DATASET dsItem FOR ttItem.
