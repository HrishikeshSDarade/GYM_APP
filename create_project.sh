# Backend structure
mkdir -p backend/src/{api,core,db/{repositories},models,schemas,services,utils}
mkdir -p backend/tests/{test_api,test_services}
mkdir -p backend/requirements

# Create backend Python files
touch backend/src/api/{__init__.py,auth.py,members.py,trainers.py,classes.py,bookings.py,memberships.py,payments.py,dashboard.py}
touch backend/src/core/{__init__.py,config.py,security.py,exceptions.py,dependencies.py}
touch backend/src/db/{__init__.py,mongodb.py}
touch backend/src/db/repositories/{__init__.py,base.py,user_repo.py,class_repo.py,booking_repo.py,membership_repo.py}
touch backend/src/models/{__init__.py,user.py,trainer.py,class_.py,booking.py,membership.py}
touch backend/src/schemas/{__init__.py,auth.py,user.py,class_.py,booking.py}
touch backend/src/services/{__init__.py,auth_service.py,booking_service.py,notification_service.py,payment_service.py}
touch backend/src/utils/{__init__.py,logger.py,email.py}
touch backend/tests/{__init__.py,conftest.py}
touch backend/tests/test_api/{test_auth.py,test_bookings.py}
touch backend/tests/test_services/test_auth_service.py
touch backend/requirements/{base.txt,dev.txt,prod.txt}
touch backend/main.py

# Frontend structure
mkdir -p frontend/public/assets/images
mkdir -p frontend/src/{components/{common,auth,booking},pages/{Auth,Dashboard,Booking},services,store/slices,styles,types}

# Create frontend files
touch frontend/public/index.html
touch frontend/src/components/common/{Navbar.tsx,Footer.tsx,Loading.tsx}
touch frontend/src/components/auth/{LoginForm.tsx,RegisterForm.tsx}
touch frontend/src/components/booking/{ClassCard.tsx,BookingCalendar.tsx}
touch frontend/src/pages/{Home.tsx}
touch frontend/src/pages/Auth/{Login.tsx,Register.tsx}
touch frontend/src/pages/Dashboard/{Member.tsx,Trainer.tsx,Admin.tsx}
touch frontend/src/pages/Booking/{Classes.tsx,MyBookings.tsx}
touch frontend/src/services/{api.ts,auth.service.ts,booking.service.ts}
touch frontend/src/store/slices/{authSlice.ts,bookingSlice.ts}
touch frontend/src/store/store.ts
touch frontend/src/styles/{global.css,theme.ts}
touch frontend/src/types/index.ts
touch frontend/src/{App.tsx,index.tsx}
touch frontend/{package.json,tsconfig.json}

# Kubernetes structure
mkdir -p kubernetes/{base/{backend,frontend,mongodb},overlays/{development,production},scripts}

# Create Kubernetes files
touch kubernetes/base/kustomization.yaml
touch kubernetes/base/backend/{deployment.yaml,service.yaml,configmap.yaml}
touch kubernetes/base/frontend/{deployment.yaml,service.yaml}
touch kubernetes/base/mongodb/{statefulset.yaml,service.yaml,persistent-volume.yaml}
touch kubernetes/overlays/development/{kustomization.yaml,ingress.yaml}
touch kubernetes/overlays/production/{kustomization.yaml,ingress.yaml}
touch kubernetes/scripts/{setup-minikube.sh,deploy.sh}

# Docker structure
mkdir -p docker
touch docker/{backend.Dockerfile,frontend.Dockerfile,docker-compose.yml}

# Documentation structure
mkdir -p docs/{api,diagrams}
touch docs/api/swagger.json
touch docs/diagrams/{architecture.png,db-schema.png}
touch docs/setup.md

# Scripts structure
mkdir -p scripts
touch scripts/{setup-dev.sh,lint.sh,test.sh}

# Root files
touch {.gitignore,.env.example,README.md,Makefile}

# Make scripts executable
chmod +x scripts/*.sh
chmod +x kubernetes/scripts/*.sh

echo "Project structure created successfully!"
