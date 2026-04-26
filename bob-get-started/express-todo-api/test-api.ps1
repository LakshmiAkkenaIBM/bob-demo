# Test script for modernized Node.js 22 Express Todo API
Write-Host "=== Testing Modernized Node.js 22 Express Todo API ===" -ForegroundColor Cyan
Write-Host ""

# Test 1: Get all todos
Write-Host "Test 1: GET /api/todos - Fetch all todos" -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:3000/api/todos" -UseBasicParsing
    Write-Host "Status: $($response.StatusCode) OK" -ForegroundColor Green
    Write-Host "Response:" -ForegroundColor Green
    $response.Content | ConvertFrom-Json | ConvertTo-Json -Depth 10
    Write-Host ""
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
}

# Test 2: Create a new todo
Write-Host "Test 2: POST /api/todos - Create new todo" -ForegroundColor Yellow
try {
    $body = @{
        title = "Modernized with Node.js 22 and ESM modules!"
    } | ConvertTo-Json
    
    $response = Invoke-WebRequest -Uri "http://localhost:3000/api/todos" `
        -Method POST `
        -ContentType "application/json" `
        -Body $body `
        -UseBasicParsing
    
    Write-Host "Status: $($response.StatusCode) Created" -ForegroundColor Green
    Write-Host "Response:" -ForegroundColor Green
    $newTodo = $response.Content | ConvertFrom-Json
    $newTodo | ConvertTo-Json -Depth 10
    $todoId = $newTodo.id
    Write-Host ""
    
    # Test 3: Get the specific todo
    Write-Host "Test 3: GET /api/todos/$todoId - Fetch specific todo" -ForegroundColor Yellow
    $response = Invoke-WebRequest -Uri "http://localhost:3000/api/todos/$todoId" -UseBasicParsing
    Write-Host "Status: $($response.StatusCode) OK" -ForegroundColor Green
    Write-Host "Response:" -ForegroundColor Green
    $response.Content | ConvertFrom-Json | ConvertTo-Json -Depth 10
    Write-Host ""
    
    # Test 4: Update the todo
    Write-Host "Test 4: PUT /api/todos/$todoId - Update todo" -ForegroundColor Yellow
    $updateBody = @{
        title = "Successfully modernized to Node.js 22!"
        completed = $true
    } | ConvertTo-Json
    
    $response = Invoke-WebRequest -Uri "http://localhost:3000/api/todos/$todoId" `
        -Method PUT `
        -ContentType "application/json" `
        -Body $updateBody `
        -UseBasicParsing
    
    Write-Host "Status: $($response.StatusCode) OK" -ForegroundColor Green
    Write-Host "Response (Updated Todo):" -ForegroundColor Green
    $response.Content | ConvertFrom-Json | ConvertTo-Json -Depth 10
    Write-Host ""
    
    # Test 5: Verify the update
    Write-Host "Test 5: Verify updated title" -ForegroundColor Yellow
    $response = Invoke-WebRequest -Uri "http://localhost:3000/api/todos/$todoId" -UseBasicParsing
    $updatedTodo = $response.Content | ConvertFrom-Json
    if ($updatedTodo.title -eq "Successfully modernized to Node.js 22!" -and $updatedTodo.completed -eq $true) {
        Write-Host "✓ Title updated successfully!" -ForegroundColor Green
        Write-Host "✓ Completed status updated successfully!" -ForegroundColor Green
    } else {
        Write-Host "✗ Update verification failed" -ForegroundColor Red
    }
    Write-Host ""
    
    # Test 6: Delete the todo
    Write-Host "Test 6: DELETE /api/todos/$todoId - Delete todo" -ForegroundColor Yellow
    $response = Invoke-WebRequest -Uri "http://localhost:3000/api/todos/$todoId" `
        -Method DELETE `
        -UseBasicParsing
    
    Write-Host "Status: $($response.StatusCode) No Content" -ForegroundColor Green
    Write-Host "Todo deleted successfully" -ForegroundColor Green
    Write-Host ""
    
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
}

Write-Host "=== All Tests Complete ===" -ForegroundColor Cyan

# Made with Bob
