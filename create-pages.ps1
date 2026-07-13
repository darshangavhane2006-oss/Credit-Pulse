$pages = @(
  "LandingPage",
  "LoginPage",
  "OnboardingPage",
  "AnalyzingPage",
  "MSMEDashboard",
  "ExplainabilityPage",
  "SimulatorPage",
  "AICoachPage",
  "EarlyWarningPage",
  "ReportPage",
  "SettingsPage",
  "BankDashboard",
  "BusinessDetailPage",
  "RiskMonitorPage",
  "ConsentAuditPage"
)

foreach ($page in $pages) {
  $content = @"
export function $page() {
  return (
    <div className="p-8">
      <h1 className="text-2xl font-bold">$page</h1>
      <p className="text-muted-foreground mt-2">This is a placeholder for $page.</p>
    </div>
  );
}
"@
  Set-Content -Path "src/pages/$page.tsx" -Value $content
}
