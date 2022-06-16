Describe 'str module'
	Include lib/str.sh

	Describe 'string is empty'
		It 'returns failure for string "abc"'
			When call str::is_empty "abc"
			The status should be failure
		End

		It 'returns success for string ""'
			When call str::is_empty ""
			The status should be success
		End

		It 'returns failure for string "   "'
			When call str::is_empty "   "
			The status should be failure
		End
  End
End
