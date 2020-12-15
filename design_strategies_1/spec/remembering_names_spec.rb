describe 'remember_name method' do
	it 'provides a friendly message' do
		expect(remember_name('Katie')).to eq "Name stored!"
	end
end


describe 'show_names method' do
	it 'displays a list of names' do
		expect(expect(show_names)).to eq [‘Katie’, ‘Hannah’]
	end
end