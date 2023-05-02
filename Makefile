egvs:
	@echo record_id, system_time, display_time, transmitter_id, transmitter_ticks, value, trend, trend_rate, unit, rate_unit, display_device, transmitter_generation > data/egvs.csv
	@jq -r '.records[] | [.recordId, .systemTime, .displayTime, .transmitterId, .transmitterTicks, .value, .trend, .trendRate, .unit, .rateUnit, .displayDevice, .transmitterGeneration] | @csv' data/egvs-2022-02-01-2022-03-01.json >> data/egvs.csv
	@echo converted data/egvs-2022-02-01-2022-03-01.json to egvs.csv
	@jq -r '.records[] | [.recordId, .systemTime, .displayTime, .transmitterId, .transmitterTicks, .value, .trend, .trendRate, .unit, .rateUnit, .displayDevice, .transmitterGeneration] | @csv' data/egvs-2022-03-01-2022-03-31.json >> data/egvs.csv
	@echo converted data/egvs-2022-03-01-2022-03-31.json to egvs.csv
	@jq -r '.records[] | [.recordId, .systemTime, .displayTime, .transmitterId, .transmitterTicks, .value, .trend, .trendRate, .unit, .rateUnit, .displayDevice, .transmitterGeneration] | @csv' data/egvs-2022-03-31-2022-04-30.json >> data/egvs.csv
	@echo converted data/egvs-2022-03-31-2022-04-30.json to egvs.csv
