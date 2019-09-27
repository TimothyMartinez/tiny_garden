export const filters = [
  {
    filterType: 'size',
    filterParams:   [
      { value: 0, label: 'small' },
      { value: 1, label: 'medium' },
      { value: 2, label: 'large' }
    ]
  },
  {
    filterType: 'light',
    filterParams:   [
      { value: 0, label: 'low' },
      { value: 1, label: 'partial' },
      { value: 2, label: 'full' }
    ]
  },
  {
    filterType: 'maintenance',
    filterParams:   [
      { value: 0, label: 'easy to care' },
      { value: 1, label: 'takes skill' },
      { value: 2, label: 'difficult to care' },
    ]
  },
  {
    filterType: 'category',
    filterParams:   [
      { value: 0, label: 'herb' },
      { value: 1, label: 'houseplant' },
    ]
  },
]
