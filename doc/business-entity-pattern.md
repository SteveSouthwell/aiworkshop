# ABL Business Entity Architecture Pattern

## Overview

The Business Entity pattern provides a standardized, maintainable approach to data access in OpenEdge ABL applications. It separates UI logic from database operations through a layered architecture that promotes reusability, testability, and consistency.

## Architecture Layers

### 1. UI Layer (Windows/Forms)
- **Responsibility**: User interaction and presentation
- **Access**: Never directly accesses database tables
- **Communication**: Calls Business Entity methods with datasets

### 2. Business Entity Layer
- **Responsibility**: Data access, business rules, validation
- **Inheritance**: Extends `OpenEdge.BusinessLogic.BusinessEntity`
- **Management**: Instantiated through EntityFactory (singleton pattern)

### 3. Database Layer
- **Responsibility**: Persistent storage
- **Access**: Only through data-sources attached to business entities

## Key Components

See full documentation in the repository for:
- EntityFactory (Singleton Pattern)
- Dataset Definition (.i Include Files)
- Business Entity Class structure
- Standard CRUD Operations
- Validation Pattern
- Multi-Table Entities
- UI Integration Pattern

## Common Pitfalls

1. **Using BY-REFERENCE on OUTPUT DATASET for Read Operations** - Use OUTPUT without BY-REFERENCE
2. **Forgetting Change Tracking** - Enable `TEMP-TABLE:TRACKING-CHANGES = TRUE` before updates
3. **Missing Data-Source Assignment** - Always assign data-source handles to ProDataSource
4. **Direct Database Access from UI** - Always use business entities
5. **Not Using Named Buffers** - Always define and use named buffers

## Benefits

- **Maintainability**: Centralized data access logic
- **Reusability**: Business entities shared across multiple UI components
- **Testability**: Business logic isolated from UI
- **Consistency**: All data access follows same pattern
- **Scalability**: Easy to add new entities

## References

- Project Examples:
  - `src/business/CustomerEntity.cls`
  - `src/business/EntityFactory.cls`
  - `src/CustomerWin.w`
