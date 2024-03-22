# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

def progress(message, show_bar = true)
  puts '=' * 100 if show_bar
  puts message
  puts '=' * 100 if show_bar
end

title_dr = Title.create(title: 'Dr')
title_mrs = Title.create(title: 'Mrs')
title_miss = Title.create(title: 'Miss')
title_mr = Title.create(title: 'Mr')
job_dental_surgeon = Job.create(title: 'Dental Surgeon', category: 'dentist')
job_hygienist = Job.create(title: 'Hygienist', category: 'hygienist')
job_manager = Job.create(title: 'Practice Manager', category: 'manager')
job_nurse = Job.create(title: 'Nurse', category: 'nurse')
job_receptionist = Job.create(title: 'Receptionist', category: 'receptionist')
job_treatment = Job.create(title: 'Treatment Co-ordinator', category: 'treatment-coordinator')
job_doctor = Job.create(title: 'Doctor', category: 'doctor')

# TODO
# availability is currently unused

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Jon',
  lastname: 'Busby',
  qualification: 'BDS (Lond) LDS RDS (Lond)',
  gdc: '54405',
  availability: 'Monday to Friday, mornings and evenings',
  description: %s(Jon is a principal dentist at the Sunbury Dental Practice; he qualified from University College Hospital, London in 1980 and has been working at the Sunbury Dental Practice since, becoming a partner in 1983. With over 30 years of experience in all aspects of dentistry Jon has a particular interest in cosmetic and reconstructive dentistry. Jon is a dedicated dentist who puts the interests of his patients first. He participates in continual professional development to maintain the highest quality of dentistry.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Ted',
  lastname: 'Garside',
  qualification: 'LDS RCS (Eng)',
  gdc: '54618',
  availability: 'Monday to Thursday, mornings and evenings',
  description: %s(Ted is a principal dentist at the Sunbury Dental Practice; he qualified from University College Hospital, London in 1980 and joined the Practice in 1982, becoming a partner in 1983. Ted covers all aspects of general dentistry and has a particular interest in white fillings and aesthetic dentistry. Ted is interested in doing only the very best he can for the practice and his patients. This means "getting things right", and continuously moving forward, utilising new technologies and skills. Ted's experienced approach to dentistry and to his patients has made him a favourite with children and anxious patients.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Kathryn',
  lastname: 'Wilson',
  qualification: 'BDS (Lond) Dip Rest Dent FGDP RCS (Eng)',
  gdc: '61916',
  availability: 'Monday to Thursday, mornings and evenings',
  description: %s(Kathryn, a principal dentist at the Sunbury Dental Practice, qualified from King's College, London in 1986 and worked in a few practices, gaining a wide range of experience before joining the Sunbury Dental Practice in 1989 and becoming a partner in 2000. Kathryn gained her post graduate diploma in restorative dentistry in 2009 from the Royal College of Surgeons and has a special interest in complex restorative treatments and aesthetics, including restorations with implants.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Greg',
  lastname: 'Winter',
  qualification: 'BDS (Brist), LFHom(Dent)',
  gdc: '59303',
  availability: 'Monday to Friday, excluding Thursday, mornings and evenings and also on Saturday morning',
  description: %s(Greg qualified in 1984 from the University of Bristol and has worked in a number of practices in Surrey, combined with study at the Royal London Homoeopathic Hospital, where he gained his LFHom(Dent) qualification in the mid 1990s.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Ziad',
  lastname: 'Ali',
  qualification: 'BDS (Brist) MFGDP(UK) MJDF(UK)',
  gdc: '82094',
  availability: '',
  description: %s{Ziad graduated from the University of Bristol in 2003. In 2006 he obtained membership to the Faculty of General Dental Practitioners of the Royal College of Surgeons England and in 2007 Membership to the Joint Dental Faculties of the Royal College of Surgeons England.

                  Ziad is an experienced, gentle dentist with a relaxed, informal style which helps to put his patients at ease. He is passionate about dentistry and has travelled extensively to learn from some of the best dentists in the world.

                  For the past 5 years Ziad has been working in Somerset under the tutelage of one of the leading cosmetic dentists in England. Ziad enjoys all aspects of dentistry but has a particular clinical interest in the field of cosmetic dentistry, endodontics and dental implants. He has completed numerous postgraduate courses including the Invisalign certification course which allows him to provide invisible braces to correct patients' crooked smiles.}
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Claire',
  lastname: 'Busby',
  qualification: 'BDS (Hons) LDS RCS (Eng)',
  gdc: '56746',
  availability: 'Wednesday mornings',
  description: %s(Claire graduated from Guy's Hospital, London in 1982, winning the War Memorial Clinical Scholarship, and has worked at the Sunbury Dental Practice ever since. Claire follows post-graduate education in various fields and is a compassionate and caring professional who will always welcome apprehensive patients. Following on from her father, Dr David Thomas, who established the dental practice in 1959, Claire is dedicated to building good rapport with her patients, some of whom are the 4th generation of their family attending the practice.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Nicola',
  lastname: 'McIntyre',
  qualification: 'BDS (Lond) LDS RCS (Eng)',
  gdc: '65238',
  availability: 'Mondays, Tuesdays and Thursdays, morning and evening',
  description: %s(Nicola qualified in 1990 from University College Hospital, London. After completing a vocational training year at Kingston Hospital Nicola has worked exclusively at the Sunbury Dental Practice. As an active member of the British Dental Association she attends regular meetings and lectures. Nicola also does voluntary work with handicapped children and terminally ill patients and has a particular interest in the use of CBT (cognitive behavioural Therapy) in the treatment of anxious patients and preventative dentistry.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Debbie',
  lastname: 'Thomas',
  qualification: 'BDS (Edin) 1992',
  gdc: '67706',
  availability: 'Friday mornings',
  description: %s(Debbie qualified from Edinburgh University in 1992. Since then she has limited her practice to oral surgery involving the removal of teeth broken roots and impacted wisdom teeth as well as cysts and other soft tissue lesions.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Dipali',
  lastname: 'Dalia',
  qualification: 'BDS (Lond) MFDS RCS (Eng) MSc M Clin Dent MRD RCS (Ed)',
  gdc: '78334',
  availability: 'alternate Thursday and Fridays',
  description: %s(Dipali qualified in dentistry in 2000 from King College London. Further post graduate qualifications in dentistry were gained from Kings College London, the Royal College of Surgeons in England and from the Royal College of Surgeons in Edinburgh. Dipali is registered as a specialist in Periodontics and works at a number of practices as well as a specialist clinical teacher at Guy's Hospital, teaching undergraduates.)
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'David',
  lastname: 'Jones',
  qualification: 'BDentSci (U Glasg) BDS (U Glasg) MFDS RCS (Glasg)',
  gdc: '85434',
  availability: 'Saturday mornings limited to Endodonics',
  description: %s{Dental Surgeon - David works Saturday mornings limited to Endodonics.

                  David gained a degree in Dental Science from Glasgow University in 2003. He graduated as a dentist from Glasgow University in 2003 and became a Member of the Faculty of Physicians and Surgeons of Glasgow in 2009.

                  He is a Registrar in Endodontics at Kings Dental Institute, based at Guy's Hospital, London, and is studying for the Masters in Clinical Dentistry (Endodontics) and Membership in Restorative Dentistry of the Royal College of Surgeons (Edinburg).

                  David has excellent communication skills and always takes time to explain all treatment options to his patients to make sure they are fully informed and feel comfortable and happy during their appointments.}
)

Worker.create(
  title_id: title_dr.id,
  job_id: job_dental_surgeon.id,
  firstname: 'Colin',
  lastname: 'Neil',
  qualification: 'BDS (Bristol) MFDS RCS (England) MSc (Implant Dentistry, University of Warwick) Dip. Dent. Sedation (KCL) MSurgDent RCS (England)',
  gdc: '83459',
  availability: 'as a Visiting Dental Surgen/Implantologist - special interest in implant dentistry',
  description: %s{
    Dr Colin Neil is a partner in his own dental practice in Stroud Gloucestershire (http://www.confident-dental-care.co.uk/dental-implants/) and is our visiting dental implantologist, providing all the latest and most evidence-based techniques of dental implant treatment, including implant placement and bone or sinus grafting if required.

    Dr Neil has followed a varied, international training pathway to develop skills in all surgical and restorative aspects of implant dentistry which allows him to replace missing or failing teeth and can replace single teeth, multiple teeth or even whole jaws with dental implants so you will not have gaps or need dentures anymore! Dr Neil's training has included a sponsored postgraduate U.S.A. sabbatical to study at various Californian dental schools and private practices and his initial work as an Oral & Maxillofacial Surgery Senior House Officer. He has also completed Professor Hilt Tatum's intensive Tatum Institute training and advanced implant and bone & sinus grafting training in Pakistan, France and Sweden. Dr Neil has presented his research at dental implant conferences both in the UK and internationally, including in Hamburg, Athens and San Diego.

    Dr Neil is a Fellow and Master of the International Congress of Oral Implantology and is actively involved in the Association of Dental Implantology (ADI) from whom he has been accepted as an ADI Mentor and is an invited member of the new ADI Training Faculty. He is also a Clinical Coach for AstraTech dental implants and an invited inaugural member of the new PEERS Astra network.

    Commitment to postgraduate training led to Dr Neil achieving his Masters degree in Implant Dentistry (MSc, University of Warwick). He has also completed the Royal College of Surgeon's specialist exit exam in surgical dentistry: MSurgDent RCS. He is now involved in examining and providing clinical training in implant dentistry for the Warwick MSc course where he is an Associate Clinical Teacher and the University of Central Lancashire's Implant Dentistry MSc programme, for whom he is Lead Clinical Supervisor. Dr Neil remains dedicated to education and high quality, evidence-based implant dentistry which has enabled him to establish an excellent reputation and looks forward to helping you with your dental implant treatment at Sunbury Dental Practice.
  }
)

Worker.create(
  title_id: title_mrs.id,
  job_id: job_hygienist.id,
  firstname: 'Lin',
  lastname: 'Lord',
  qualification: 'CEB Dip Dent Hygiene RDH RSH dip DHE FETC MIfL',
  gdc: '2204',
  availability: 'Monday, Tuesday, Wednesday mornings and Thursday evening',
  description: %s(Lin qualified as a dental hygienist from the Royal Army Dental Corps, Aldershot in 1981, gaining her diploma in Dental Health Education (DHE) from the Royal Society of Health in 1982 and has worked in general dental practice since. She has been an active member of the British Society of Dental Hygiene and Therapy, regularly attending courses and lectures, and was an executive member of the Southern Group for a number of years. Lin has been teaching the Dental Nursing National Certificate at Brookland's College, Weybridge since 2001and is a member of the Institute for Learning (MIfL))
)

Worker.create(
  title_id: title_miss.id,
  job_id: job_hygienist.id,
  firstname: 'Alice',
  lastname: 'Garside',
  qualification: 'Dip Dent Hygiene RCS (Eng), RDH - Eastman Hospital (UCL) 2008',
  gdc: '178748',
  availability: 'Tuesday evenings',
  description: %s{Alice had her first dental appointment with us when she was 3 months old and she is now here to look after the health of your teeth and gums. She is enthusiastic and keen to educate patients about oral hygiene and the correct use of brushes and floss. Alice graduated with a BA in English and History before training as a dental hygienist at The Eastman Hospital, University College of London (UCL). She has all the clinical skills and up to date treatment knowledge to ensure you are given the best treatment possible. She has worked in both general and specialist dental practices in London & Surrey.
                  Alice regularly attends postgraduate courses to remain up to date with current treatments and practice policies. She is happy to answer any questions you might have and she looks forward to seeing you soon.}
)

progress 'Creating nurses'

Worker.create(
  title_id: title_miss.id,
  job_id: job_nurse.id,
  firstname: 'Jo',
  lastname: 'Martin',
  qualification: 'NEBDSA',
  gdc: '119099'
)

Worker.create(
  title_id: title_miss.id,
  job_id: job_nurse.id,
  firstname: 'Lucie',
  lastname: 'Oliver',
  qualification: 'NEBDN',
  gdc: '196572'
)

Worker.create(
  title_id: title_mrs.id,
  job_id: job_nurse.id,
  firstname: 'Liane',
  lastname: 'Wong',
  qualification: 'NEBDN',
  gdc: '117667'
)

Worker.create(
  title_id: title_mrs.id,
  job_id: job_nurse.id,
  firstname: 'Mandy',
  lastname: 'Fowler',
  qualification: 'Experienced Nurse',
  gdc: '117593'
)

Worker.create(
  title_id: title_miss.id,
  job_id: job_nurse.id,
  firstname: 'Alice',
  lastname: 'Catchpole',
  qualification: 'Trainee Nurse'
)

progress 'Creating receptionists'

Worker.create(
  title_id: title_mrs.id,
  job_id: job_receptionist.id,
  firstname: 'Steph',
  lastname: 'Daniels'
)

Worker.create(
  title_id: title_miss.id,
  job_id: job_receptionist.id,
  firstname: 'Jenny',
  lastname: 'Woodman'
)

Worker.create(
  title_id: title_mrs.id,
  job_id: job_receptionist.id,
  firstname: 'Clare',
  lastname: 'Field'
)

progress 'Creating practice manager'

Worker.create(
  title_id: title_mrs.id,
  job_id: job_manager.id,
  firstname: 'Sarah',
  lastname: 'Catchpole',
  qualification: 'NEBDSA',
  gdc: '109434',
  description: %s(Sarah is our extremely hard working practice manager and has been with us at the Sunbury Dental Practice since 1985. Sarah is a fully qualified dental nurse and has gained wealth of experience in the world of dentistry. Sarah's key role at The Sunbury Dental Clinic involves the smooth running's of the surgery's, the practice management, and ensuring a happy workforce is there to greet you. If you have any questions comments or queries on your dental treatment Sarah is there to help.)
)

progress 'Creating product categories'

general = ProductCategory.create(name: 'General')
fillings = ProductCategory.create(name: 'Bleaching / Whitening Fillings')
extractions = ProductCategory.create(name: 'Root Treatment Extractions')
dentures = ProductCategory.create(name: 'Dentures')
bridge = ProductCategory.create(name: 'Crown and Bridge')
periodontics = ProductCategory.create(name: 'Periodontics')

progress 'Creating products'

Product.create(name: 'Exam', price: '44.00', product_category_id: general.id)
Product.create(name: 'Exam for new patients (Includes all digital x-rays)', price: '44.00',
               product_category_id: general.id)
Product.create(name: 'Exam for children (under 19 years on NHS)', price: 'Free', product_category_id: general.id)
Product.create(name: 'Exam for students (19 years - under 22 years)', price: '22.00', product_category_id: general.id)
Product.create(name: 'Consultation / Emergency - advice,antibiotics,minor works', price: '44.00',
               product_category_id: general.id)
Product.create(name: 'Scale & Polish (minor)', price: '23.00', product_category_id: general.id)
Product.create(name: 'Hygienist', price: '49.50', product_category_id: general.id)
Product.create(name: 'Pan-oral x-ray (full mouth - digital)', price: '29.00', product_category_id: general.id)
Product.create(name: 'Small x-ray (digital)', price: '10.00', product_category_id: general.id)
Product.create(name: 'Mouth guards / sports guards', price: 'from 60.00', product_category_id: general.id)

Product.create(name: '', price: '250.00', product_category_id: fillings.id)
Product.create(name: 'Amalgam Fillings (silver & mercury)', price: 'from 60.00', product_category_id: fillings.id)
Product.create(name: 'White Fillings - small', price: 'from 60.00', product_category_id: fillings.id)
Product.create(name: 'White Fillings - large', price: 'from 90.00', product_category_id: fillings.id)

Product.create(name: 'Front / Back teeth (single roots)', price: 'from 250.00', product_category_id: extractions.id)
Product.create(name: 'Simple Surgical', price: 'from 60.00', product_category_id: extractions.id)
Product.create(name: 'Oral Surgery', price: 'from 138.00', product_category_id: extractions.id)

Product.create(name: 'Partial Denture', price: 'from 345.00', product_category_id: dentures.id)
Product.create(name: 'Full Denture', price: 'from 350.00', product_category_id: dentures.id)
Product.create(name: 'Chrome Dentures (metal)', price: 'from 450.00', product_category_id: dentures.id)
Product.create(name: 'Repair or addition to denture', price: 'from 110.00', product_category_id: dentures.id)

Product.create(name: 'Crown, Veneer, Bridge Unit', price: 'from 110.00', product_category_id: bridge.id)
Product.create(name: 'Metal Crown', price: 'from 110.00', product_category_id: bridge.id)

Product.create(name: 'Consultation and detailed assessment (30 minutes)', price: '135.00',
               product_category_id: periodontics.id)

progress 'Creating users'
User.create(email: 'test@email.com', password: 'password123')

progress 'Creating promotions'
Promotion.create(title: '50% Off New Patient Exams at Sunbury Dental Practice', active: true)
Promotion.create(title: 'COVID-19 PRACTICE INFORMATION (Practice Operating Hours - Click Here for Details)',
                 active: true)

progress 'Creating contacts'
Contact.create(contact: 'Foo',
               email: 'foo@bar.com',
               phone: '+447811111111',
               message: 'Hello World!')

progress 'DONE'
