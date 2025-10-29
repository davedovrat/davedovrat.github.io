input metauml;

beginfig(1);
Actor.student("Student");
Actor.super("Supervisor");

Usecase.writeus("Write", "User Stories");
Usecase.drawus("Draw", "Use Case Diagram");
Usecase.grade("Grade", "User Stories");
Usecase.happy("Be happy");

topToBottom(25)(drawus, grade);
leftToRight(80)(student, writeus, drawus);
leftToRight(80)(happy, grade, super);


drawObjects(student, super, writeus, drawus, grade, happy);

clink(dependency)(happy, grade);
item(iStereo)("<<extends>>")(obj.s = .5[happy.e,grade.w]);
clink(associationUni)(writeus, drawus);
item(iStereo)("<<includes>>")(obj.s = .5[writeus.e,drawus.w]);
clink(association)(student.human, writeus);
clink(association)(super.human, grade);

endfig;
end
