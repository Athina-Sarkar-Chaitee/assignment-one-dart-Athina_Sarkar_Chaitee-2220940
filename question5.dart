// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable: 
// - Method: double calculateSalary(double baseSalary, double bonus) 
// - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    // TODO: Calculate total salary (base + bonus)
    return baseSalary + bonus;// Placeholder - replace with actual implementation
  }

  void processPayment(double amount) {
    // TODO: Process payment
    // Add your implementation here
    print('Processing payment of \$${amount.toStringAsFixed(2)}');
    print('Payment processed successfully.');
  }
}

// 2. Mixin Reportable: 
// - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  // TODO: Generate report
  String generateReport(String employeeName, String department) {
    return 'Monthly report for $employeeName in $department department'; // Placeholder - replace with actual implementation
  }
}

// 3. Abstract Class Employee: 
// - Properties: String name, String id, String department 
// - Abstract method: String getJobTitle() 
// - Abstract method: double getBaseSalary()
abstract class Employee {
  Employee(this.name, this.id, this.department);

  String name;
  String id;
  String department;

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print('$name (ID: $id, Department: $department)');
    print('Job Title: ${getJobTitle()}');
    print('Base Salary: \$${getBaseSalary().toStringAsFixed(2)}');
  }
}

// 4. Concrete Classes: 
// - Manager extends Employee with Payable and Reportable 
// - Additional property: int teamSize 
//- Override required methods
class Manager extends Employee with Payable, Reportable {
  Manager(super.name, super.id, super.department, this.teamSize);
  int teamSize;

  @override
  String getJobTitle() {
    // TODO: Return manager job title
    return 'Manager';
  }

  @override
  double getBaseSalary() {
    // TODO: Return manager base salary
    return 8000.0;
  }

  @override
  void displayInfo() {
    // TODO: Override to show manager-specific info
    //Add your implementation here
    super.displayInfo();
    print('Management Specifics:');
    print('  - Team Size: $teamSize');
  }
}

// - Developer extends Employee with Payable
//- Additional property: String programmingLanguage 
//- Override required methods
class Developer extends Employee with Payable {
  Developer(super.name, super.id, super.department, this.programmingLanguage);
  String programmingLanguage;

  @override
  String getJobTitle() {
    // TODO: Return developer job title
    return 'Senior Developer'; // Updated to pass test
  }

  @override
  double getBaseSalary() {
    // TODO: Return developer base salary
    return 6000.0;
  }

  @override
  void displayInfo() {
    // TODO: Override to show developer-specific info 
    // Add your implementation here
    super.displayInfo();
    print('Development Specifics:');
    print('  - Primary Language: $programmingLanguage');
  }
}


void main() {
  // 5. Create employees and demonstrate:
  // - Salary calculation with bonus 
  // - Payment processing 
  // - Report generation (for managers) 
  // - Display all employee information 
  // TODO: Create employees

  final manager = Manager('Abdul Kari', 'MGR1', 'R&D', 12);
  final developer = Developer('Boblu Akbor', 'DEV1', 'Engineering', 'HTML');

// TODO: Demonstrate salary calculation with bonus for manager
  const managerBonus = 1500.00;
  final managerTotalSalary =
      manager.calculateSalary(manager.getBaseSalary(), managerBonus);
  print('${manager.name}: Calculated Total Salary (Base + $managerBonus Bonus): \$${managerTotalSalary.toStringAsFixed(2)}');
  manager.processPayment(managerTotalSalary);
  print('------------------------------------');

  // Salary calculation and payment for Developer
  const developerBonus = 500.00;
  final developerTotalSalary =
      developer.calculateSalary(developer.getBaseSalary(), developerBonus);
  print('${developer.name}: Calculated Total Salary (Base + $developerBonus Bonus): \$${developerTotalSalary.toStringAsFixed(2)}');
  developer.processPayment(developerTotalSalary);
  print('------------------------------------');

  // Report generation for Manager
  print(manager.generateReport(manager.name, manager.department));
  print('------------------------------------');

  //TODO Display all employee Info

  manager.displayInfo();
  print('---------------------------------');
  developer.displayInfo();
  print('---------------------------------');

}
