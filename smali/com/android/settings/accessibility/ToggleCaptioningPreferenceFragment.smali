.class public Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "ToggleCaptioningPreferenceFragment.java"


# static fields
.field private static final DEFAULT_FONT_SIZE:F = 48.0f


# instance fields
.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/settings/accessibility/CaptionPropertiesFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V
    .locals 6
    .parameter "manager"
    .parameter "previewText"
    .parameter "styleId"

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 107
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 108
    .local v2, fontScale:F
    const/high16 v5, 0x4240

    mul-float/2addr v5, v2

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 110
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 111
    .local v3, locale:Ljava/util/Locale;
    if-eqz v3, :cond_0

    .line 112
    const v5, 0x7f0c107d

    invoke-static {v0, v3, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 114
    .local v4, localizedText:Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v4           #localizedText:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-direct {v2, v0}, Lcom/android/settings/accessibility/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 124
    .local v2, toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;
    instance-of v3, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v3, :cond_0

    .line 125
    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 144
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 145
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 146
    invoke-virtual {v2, v1}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 147
    new-instance v3, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 158
    return-void

    .line 145
    :cond_1
    const/4 v3, 0x4

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0c105b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const v1, 0x7f040018

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, rootView:Landroid/view/View;
    instance-of v1, p2, Lcom/htc/preference/HtcPreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 67
    :cond_0
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 76
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->setParent(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V

    .line 78
    const v0, 0x7f09002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->installActionBarToggleSwitch()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->refreshPreviewText()V

    .line 82
    return-void
.end method

.method public refreshPreviewText()V
    .locals 7

    .prologue
    .line 85
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 86
    .local v4, preview:Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 89
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    .line 90
    .local v5, styleId:I
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v6, v4, v5}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V

    .line 92
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 93
    .local v2, locale:Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 94
    const v6, 0x7f0c107c

    invoke-static {v0, v2, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 96
    .local v3, localizedText:Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #localizedText:Ljava/lang/CharSequence;
    .end local v5           #styleId:I
    :cond_0
    return-void
.end method
