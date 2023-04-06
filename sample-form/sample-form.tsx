// ** React Imports

// ** MUI Imports
import Card from '@mui/material/Card'
import Grid from '@mui/material/Grid'
import Button from '@mui/material/Button'
import Divider from '@mui/material/Divider'
import TextField from '@mui/material/TextField'
import CardHeader from '@mui/material/CardHeader'
import CardContent from '@mui/material/CardContent'
import CardActions from '@mui/material/CardActions'
import FormControl from '@mui/material/FormControl'

// ** Third Party Imports
import { useForm, SubmitHandler } from 'react-hook-form'
import axios from 'axios'

// ** Icon Imports
import DatePickerWrapper from 'src/@core/styles/libs/react-datepicker'

// ** Configs
import formsConfig from 'src/configs/forms'
import { InputLabel, Select } from '@mui/material'

type Inputs = {
  id: number
  name: string
  screenName: string
  companyName: string
  schoolName: string
  mersisNu: number
  country: string
  city: string
  district: string
  address: string
  mapsUrl: string
  phone: number
  whatsapp: number
  email: string
}

const ClassroomRegistrationForm = () => {
  const { register, handleSubmit } = useForm<Inputs>()
  const onSubmit: SubmitHandler<Inputs> = data => {
    axios.post(formsConfig.campusEndpoint, data).then(res => console.log(res.data.data.data))
  }

  return (
    <DatePickerWrapper>
      <Card>
        <CardHeader title='Şube Kayıt Formu' />
        <Divider sx={{ m: '0 !important' }} />
        <form onSubmit={handleSubmit(onSubmit)}>
          <CardContent>
            <Grid container spacing={5}>
              <Grid item xs={12} sm={6}>
                <TextField fullWidth label='Şube Adı' placeholder='Şube Adı' inputProps={{ ...register('name') }} />
              </Grid>
              <Grid item xs={12} sm={6}>
                <FormControl fullWidth>
                  <InputLabel id='ilce-select-label'>Şube Alanı</InputLabel>
                  <Select
                    value=''
                    label='Şube'
                    labelId='sube-field-select-label'
                    inputProps={{ ...register('district') }}
                  />
                </FormControl>
              </Grid>
              <Grid item xs={12} sm={6}>
                <FormControl fullWidth>
                  <InputLabel id='ilce-select-label'>Sınıf</InputLabel>
                  <Select value='' label='Şube' labelId='sube-select-label' inputProps={{ ...register('district') }} />
                </FormControl>
              </Grid>
              <Grid item xs={12} sm={6}>
                <FormControl fullWidth>
                  <InputLabel id='ilce-select-label'>Birim</InputLabel>
                  <Select value='' label='Şube' labelId='sube-select-label' inputProps={{ ...register('district') }} />
                </FormControl>
              </Grid>
              <Grid item xs={12}>
                <TextField fullWidth value={'Gölbaşı'} disabled />
              </Grid>
              <Grid item xs={12}>
                <Divider sx={{ mb: '0 !important' }} />
              </Grid>
            </Grid>
          </CardContent>
          <CardActions>
            <Button size='large' type='submit' sx={{ mr: 2 }} variant='contained'>
              Ekle
            </Button>
            <Button type='reset' size='large' color='secondary' variant='outlined'>
              Formu Sıfırla
            </Button>
          </CardActions>
        </form>
      </Card>
    </DatePickerWrapper>
  )
}

export default ClassroomRegistrationForm