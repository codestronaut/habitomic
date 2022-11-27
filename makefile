FEATURES := $(wildcard packages/features/*)

all: clean get build-runner gen-l10n

clean:
	flutter clean
	for package in $(FEATURES); do \
		cd $${package} ; \
		echo "Running clean on $${package}" ; \
		flutter clean ; \
		cd ../../../ ; \
	done

get:
	flutter pub get
	for package in $(FEATURES); do \
		cd $${package} ; \
		echo "Updating dependencies on $${package}" ; \
		flutter pub get ; \
		cd ../../../ ; \
	done

build-runner:
	for package in $(FEATURES); do \
		cd $${package} ; \
		echo "Running build-runner on $${package}" ; \
		flutter pub run build_runner build --delete-conflicting-outputs ; \
		cd ../../../ ; \
	done

gen-l10n:
	for package in $(FEATURES); do \
		cd $${package} ; \
		echo "Generating localizations on $${package}" ; \
		flutter gen-l10n ; \
		cd ../../../ ; \
	done
