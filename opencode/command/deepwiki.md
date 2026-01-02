---
description: Generate technical reference documentation for a component/class/module (C++ reference / Go docs style)
---

Read the provided file and generate comprehensive technical reference documentation in the style of C++ reference or Go docs.

# Documentation Structure

Generate documentation with the following sections:

## 1. NAME
Brief one-line description of what this component/class/module is.

## 2. SYNOPSIS
Show the declaration/signature/import statement. Include:
- Class/interface declaration with generics/templates
- Module exports
- Function signatures
- Type definitions

## 3. DESCRIPTION
Concise technical explanation of:
- Purpose and responsibility
- When to use it
- Key design decisions
- Performance characteristics (if relevant)

## 4. API REFERENCE

For each public member, method, function, or export:

### `memberName`
```
signature with types
```
**Parameters:**
- `param1: Type` - description
- `param2: Type` - description

**Returns:** `ReturnType` - description

**Throws/Errors:** List possible error conditions

**Time Complexity:** O(n) notation if relevant

**Thread Safety:** If applicable

**Description:** What it does, behavior, side effects

## 5. USAGE EXAMPLES

Provide 3-5 practical code examples showing:
```language
// Example 1: Basic usage
code snippet

// Example 2: Common pattern
code snippet

// Example 3: Edge case handling
code snippet
```

## 6. NOTES

- Implementation details
- Gotchas and common mistakes
- Performance considerations
- Memory management (if applicable)
- Concurrency notes (if applicable)
- Relationship to other components

## 7. SEE ALSO
Related types, interfaces, or modules in the codebase

# Style Guidelines
- Be concise. The output can't be too long.
- Be technical and precise
- Use exact type signatures
- No marketing language or fluff
- Focus on behavior, not intentions
- Include complexity analysis where relevant
- Mention invariants and preconditions
- Document undefined behavior
- Show real, compilable examples
- Use system programming terminology (heap, stack, ownership, lifetime, etc.)

Generate the documentation now.
