/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java
from LoopStmt loop, MethodAccess call, Method method
where
  loop.getAChild*() = call.getEnclosingStmt() and
  call.getMethod() = method and
  method.hasName("nextLine") and
  method.getDeclaringType().getName() = "Scanner"
select call, "This is a call to nextLine of a Scanner inside a loop"
