# Swift Coordinator Pattern with Tab Bar POC  

This project is a **Proof of Concept** demonstrating the use of the **Coordinator Pattern** in Swift, combined with a `TabView` structure for managing navigation and state in a modular way.  

---

## Features  

- **Coordinator Pattern** for managing navigation flow.  
- `TabView` with two tabs: **Home** and **Profile**.  
- Each tab has its own `NavigationStack` for independent navigation.  
- Support for modal presentations with **Sheets** and **Full-Screen Covers**.  

---

## Architecture Overview  

The project architecture uses the `Coordinator Pattern` to handle navigation, making it modular and scalable. Below is an ASCII diagram representing the structure of the app:  

```plaintext
+-----------------------------+
|        ContentView          |
|  (TabView with two tabs)    |
+-----------------------------+
           |
    +------+------------------------+       
    |                             |
+-------+                    +----------+
| Home  |                    |  Profile |
| (Tab) |                    |  (Tab)   |
+-------+                    +----------+
    |                             |
    |                             |
    v                             v
+------------------+    +--------------------+
|  HomeCoordinator |    | ProfileCoordinator |
|  (EnvironmentObj)|    | (EnvironmentObj)   |
+------------------+    +--------------------+
           |                       |
           v                       v
+------------------+    +--------------------+
|  NavigationStack |    |   NavigationStack  |
|   (for Home)     |    |    (for Profile)   |
+------------------+    +--------------------+
           |                       |
           |                       |
 +---------+---------+      +------+---------+
 |          |         |            |               
 v          |         v            v               
HomeRoute   |      Sheet      ProfileRoute   
(pushed)    |   (presented)    (pushed)     
            v
        FullScreenCover
        (presented)
