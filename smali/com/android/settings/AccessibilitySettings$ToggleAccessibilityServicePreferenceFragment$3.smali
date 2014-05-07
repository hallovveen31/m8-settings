.class Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;
.super Lcom/htc/preference/HtcPreference;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 786
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 788
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 790
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 791
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 792
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 793
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 795
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 762
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 763
    const v1, 0x7f09003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 764
    .local v0, summaryView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 777
    new-instance v1, Lcom/android/settings/framework/util/HtcDisplayMetrics;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/util/HtcDisplayMetrics;-><init>(Landroid/content/Context;)V

    iget v1, v1, Lcom/android/settings/framework/util/HtcDisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 780
    return-void
.end method
