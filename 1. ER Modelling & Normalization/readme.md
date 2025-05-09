# Assignment No. 1 - ER Modeling and Normalization
---

## 📌 Title of Assignment
**ER Modeling and Normalization**

---

## 📘 Assignment Task
**Propose a Conceptual Design using ER features using tools like ERD Plus, ER Win, etc.**  
- Identify entities, relationships between entities, attributes, keys, and cardinalities.  
- Use generalization and specialization if necessary.  
- Convert the ER diagram into relational tables.  
- Normalize the resulting relational data model.

---

## 🧠 Theory

### Prerequisite
Basic knowledge of Relational Database Management Systems (RDBMS).

### Objective
To understand the concept of the Entity-Relationship (ER) model and how to:
- Design ER diagrams.
- Translate ER models into relational schemas.
- Normalize relational data models.

---

## 🧩 New Concepts

### Entity-Relationship (ER) Model
The ER model is a high-level conceptual data model used to define data elements and relationships for a specified system.

#### Components of ER Diagram:
- **Entities:** Real-world distinguishable objects (e.g., Student, Employee). Represented as **rectangles**.
- **Attributes:** Properties of entities (e.g., Name, Age). Represented as **ovals**.
- **Relationships:** Associations among entities. Represented as **diamonds**.

#### Types of Attributes:
1. **Key Attribute:** Uniquely identifies an entity (e.g., Roll Number). *Underlined* in the diagram.
2. **Composite Attribute:** Composed of multiple other attributes (e.g., Address = {City, Zip}).
3. **Multivalued Attribute:** Can hold multiple values (e.g., Phone Numbers). Represented as **double ovals**.
4. **Derived Attribute:** Derived from another attribute (e.g., Age from Date of Birth). Represented as **dashed ovals**.

#### Types of Relationships:
- **One-to-One**
- **One-to-Many**
- **Many-to-One**
- **Many-to-Many** (default)

#### Specialization and Generalization
- **Specialization:** Top-down approach (e.g., Employees → HourlyEmployees, ContractEmployees).
- **Generalization:** Bottom-up approach to combine common features into a superclass.

---

## 🛠️ Steps in Designing an ER Diagram

1. Identify entity types.
2. Identify relationship types.
3. Identify attributes for each entity and relationship.
4. Determine attribute domains.
5. Identify primary key attributes.
6. Define cardinalities for each relationship.
7. Design generalization/specialization hierarchies and constraints.

---

## 🔁 Translation of ER Diagram to Relational Tables

- Each entity and relationship becomes a table.
- Attributes become columns.
- Primary keys uniquely identify rows.
- Foreign keys establish relationships.
- The schema reflects cardinality and integrity constraints.

---

## 🧪 Tools

### ERD Plus
A free web-based tool to create:
- Entity-Relationship Diagrams
- Relational Schemas
- Star Schemas
- SQL DDL Scripts

🔗 [Visit ERDPlus](https://erdplus.com/standalone)

---

## ✅ Deliverables

1. ER Diagram designed using ERD Plus or similar tools.
2. List of identified entities, relationships, attributes, and keys.
3. Relational schema derived from the ER diagram.
4. Normalized form of relational tables (1NF, 2NF, 3NF).

---

## ✍️ Sign

