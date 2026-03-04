Executive Summary
This report presents the findings of an exploratory data analysis conducted on the Mint Classics relational database. The objective of this analysis was to evaluate the feasibility of closing one of Mint Classics' four storage facilities while maintaining the company's ability to fulfill customer orders within 24 hours. Based on the data, it is recommended that the South warehouse (Warehouse D) be closed and its inventory redistributed proportionally across the remaining three facilities.

Business Problem
Mint Classics Company currently operates four storage warehouses, those being “North(A), East(B), West(C), and South(D)”. Leadership has identified an opportunity to reduce overhead costs by consolidating operations into three facilities. The primary concern is whether inventory can be reorganized without compromising timely order fulfillment.

Methodology
Using MySQL Workbench, five SQL queries were written and executed against the Mint Classics relational database to analyze warehouse capacity, current inventory levels, product demand, and redistribution feasibility.

Key Findings
Warehouse Capacity Analysis
An analysis of current stock levels relative to warehouse capacity revealed the following:
Warehouse
% Capacity
Total Stock
Estimated Total Capacity
Available Space
West (C)
50%
124,880
249,760
124,880
East (B)
67%
219,183
327,139
107,956
North (A)
72%
131,688
182,900
51,212
South (D)
75%
79,380
105,840
26,460

The South warehouse holds the least inventory of all four facilities while operating at 75% capacity, making it the strongest candidate for closure.
Redistribution Feasibility
The combined available space across the remaining three warehouses totals 284,048 units. This significantly exceeds the 79,380 units currently stored in the South warehouse. Redistribution is fully feasible without exceeding capacity at any facility.
The proposed proportional redistribution plan is as follows:
Warehouse
Available Space
% of Total Space
Units to Receive
West (C)
124,880
44%
34,899
East (B)
107,956
38%
30,169
North (A)
51,212
18%
14,312

Inventory Concerns
A review of South warehouse products revealed several items with stock levels disproportionate to customer demand. The following products are significantly overstocked relative to total units ordered:
1950s Chicago Surface Lines Streetcar ~ 8,601 units in stock, 934 ordered
Collectable Wooden Train ~ 6,450 units in stock, 918 ordered
1980s GM Manhattan Express ~ 5,099 units in stock, 911 ordered
1957 Chevy Pickup ~ 6,125 units in stock, 1,056 ordered
Conversely, the following products show demand that is closely approaching or exceeding current stock levels and should be prioritized for restocking:
Pont Yacht ~ 414 units in stock, 958 ordered
1996 Peterbilt 379 Stake Bed with Outrigger ~ 814 units in stock, 988 ordered

Recommendations
Close the South warehouse (Warehouse D) and redistribute its 79,380 units of inventory proportionally across the West, East, and North facilities as outlined above.
Reduce inventory levels for significantly overstocked products prior to redistribution to further ease the consolidation process and reduce carrying costs.
Prioritize restocking of the Pont Yacht and 1996 Peterbilt to prevent potential fulfillment delays.

Conclusion
The data strongly supports the feasibility of closing the South warehouse. With 284,048 units of combined available space across three remaining facilities and only 79,380 units to relocate, Mint Classics can consolidate its storage operations without any risk to customer service levels. The SQL queries supporting this analysis are provided as supplementary files.
