<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>My Page</title>
</head>

<body>

  <form action="#" method="POST" name="my_form">
    <fieldset>
      <legend align="center">Important Information</legend>
      <label for="username">Username:</label><br>
      <input type="text" name="username" id="username"><br>
      <label for="password">Password:</label><br>
      <input type="password" name="password" id="password"><br>
      <input type="radio" name="gender" value="Male" id="male"><label for="male">Male</label><br>
      <input type="radio" name="gender" value="Female" id="female"><label for="female">Female</label><br>
      <input type="checkbox" name="foods" value="Grapes" id="grapes"><label for="grapes">Grapes</label><br>
      <input type="checkbox" name="foods" value="Apples" id="apples"><label for="apples">Apples</label><br>
      <input type="checkbox" name="foods" value="Bananas" id="bananas"><label for="bananas">Bananas</label>
    </fieldset>
    <br>
    
    <fieldset>
      <legend align="center">Optional Items</legend>
      <label for="essay">We want to know more about you.<br>Write a short essay about yourself!</label><br>
      <textarea name="essay" id="essay" rows="10" cols="30">
      </textarea>
      <br>

      <label for="continent">Where are you from?</label><br>
      <select name="continent" id="continent">
        <optgroup label="Americas">
          <option>North America</option>
          <option>South America</option>
        </optgroup>
        <optgroup label="Eurasia">
          <option>Europe</option>
          <option>Asia</option>
        </optgroup>
        <option>Africa</option>
        <option>Australia</option>
        <option>Antarctica</option>
      </select>
    </fieldset>
    <br>
  
    <input type="submit" value="Continue">
  </form>

</body>
</html>