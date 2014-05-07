.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Lcom/htc/preference/HtcPreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private mFontSize:Lcom/htc/preference/HtcListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;

.field private mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mShowingCustom:Z

.field private mTypeface:Lcom/htc/preference/HtcListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 86
    const-string v11, "captioning_locale"

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    .line 87
    const-string v11, "captioning_font_size"

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Lcom/htc/preference/HtcListPreference;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 90
    .local v10, res:Landroid/content/res/Resources;
    const v11, 0x7f080043

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 91
    .local v9, presetValues:[I
    const v11, 0x7f080042

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, presetTitles:[Ljava/lang/String;
    const-string v11, "captioning_preset"

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    .line 93
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v11, v9}, Lcom/android/settings/accessibility/PresetPreference;->setValues([I)V

    .line 94
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v11, v8}, Lcom/android/settings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 96
    const-string v11, "custom"

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    .line 97
    iput-boolean v14, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 99
    const v11, 0x7f08003f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 100
    .local v3, colorValues:[I
    const v11, 0x7f08003e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, colorTitles:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v12, "captioning_foreground_color"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 102
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v2}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 103
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 104
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v12, "captioning_edge_color"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 105
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v2}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 106
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 109
    array-length v11, v3

    add-int/lit8 v11, v11, 0x1

    new-array v1, v11, [I

    .line 110
    .local v1, bgColorValues:[I
    array-length v11, v2

    add-int/lit8 v11, v11, 0x1

    new-array v0, v11, [Ljava/lang/String;

    .line 111
    .local v0, bgColorTitles:[Ljava/lang/String;
    array-length v11, v3

    invoke-static {v3, v13, v1, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    array-length v11, v2

    invoke-static {v2, v13, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    aput v13, v1, v13

    .line 114
    const v11, 0x7f0c107f

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v13

    .line 115
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v12, "captioning_background_color"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 116
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v0}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 117
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v1}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 119
    const v11, 0x7f080041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 120
    .local v7, opacityValues:[I
    const v11, 0x7f080040

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, opacityTitles:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v12, "captioning_background_opacity"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 124
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v6}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 125
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v7}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 127
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v12, "captioning_edge_type"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 128
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v12, "captioning_typeface"

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcListPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Lcom/htc/preference/HtcListPreference;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 135
    .local v4, context:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/framework/core/accessibility/HtcCaptionManager;->getFontFamilyList(Landroid/content/Context;)[Lcom/android/settings/framework/core/accessibility/HtcFontFamily;

    move-result-object v5

    .line 137
    .local v5, fontFamilyList:[Lcom/android/settings/framework/core/accessibility/HtcFontFamily;
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Lcom/htc/preference/HtcListPreference;

    invoke-static {v5}, Lcom/android/settings/framework/core/accessibility/HtcFontFamily;->toNameArray([Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;)[Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 139
    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Lcom/htc/preference/HtcListPreference;

    invoke-static {v5}, Lcom/android/settings/framework/core/accessibility/HtcFontFamily;->toValueArray([Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;)[Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->requestHandlers()V

    .line 145
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 158
    return-void
.end method

.method private refreshPreviewText()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->refreshPreviewText()V

    .line 197
    :cond_0
    return-void
.end method

.method private refreshShowingCustom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 201
    .local v0, customPreset:Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 203
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 208
    :cond_0
    :goto_1
    return-void

    .end local v0           #customPreset:Z
    :cond_1
    move v0, v2

    .line 200
    goto :goto_0

    .line 204
    .restart local v0       #customPreset:Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 206
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 12

    .prologue
    const/high16 v11, -0x100

    .line 161
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    .line 162
    .local v6, preset:I
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    .line 164
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v5

    .line 165
    .local v5, fontSize:F
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Lcom/htc/preference/HtcListPreference;

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 168
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 169
    .local v0, attrs:Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 170
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    .line 171
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 173
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 176
    .local v1, backgroundColor:I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-nez v9, :cond_2

    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, bgColor:I
    and-int/lit16 v9, v1, 0xff

    shl-int/lit8 v2, v9, 0x18

    .line 183
    .local v2, bgAlpha:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 184
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    const v10, 0xffffff

    or-int/2addr v10, v2

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 186
    iget-object v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 187
    .local v8, rawTypeface:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Lcom/htc/preference/HtcListPreference;

    if-nez v8, :cond_0

    const-string v8, ""

    .end local v8           #rawTypeface:Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 189
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, rawLocale:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v7, :cond_1

    const-string v7, ""

    .end local v7           #rawLocale:Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, v7}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 191
    return-void

    .line 180
    .end local v2           #bgAlpha:I
    .end local v3           #bgColor:I
    :cond_2
    or-int v3, v1, v11

    .line 181
    .restart local v3       #bgColor:I
    and-int v2, v1, v11

    .restart local v2       #bgAlpha:I
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 69
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 74
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Lcom/htc/preference/HtcListPreference;

    if-ne v1, p1, :cond_1

    .line 243
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 255
    const/4 v1, 0x1

    return v1

    .line 245
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Lcom/htc/preference/HtcListPreference;

    if-ne v1, p1, :cond_2

    .line 246
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 249
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 250
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 213
    .local v3, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v4, p1, :cond_1

    .line 214
    const-string v4, "accessibility_captioning_foreground_color"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 237
    return-void

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v4, p1, :cond_2

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v4, p1, :cond_4

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v2

    .line 218
    .local v2, bgColor:I
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 220
    .local v1, bgAlpha:I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 221
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 225
    .local v0, argb:I
    :goto_1
    const-string v4, "accessibility_captioning_background_color"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 223
    .end local v0           #argb:I
    :cond_3
    const v4, 0xffffff

    and-int/2addr v4, v2

    const/high16 v5, -0x100

    and-int/2addr v5, v1

    or-int v0, v4, v5

    .restart local v0       #argb:I
    goto :goto_1

    .line 227
    .end local v0           #argb:I
    .end local v1           #bgAlpha:I
    .end local v2           #bgColor:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v4, p1, :cond_5

    .line 228
    const-string v4, "accessibility_captioning_edge_color"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 229
    :cond_5
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v4, p1, :cond_6

    .line 230
    const-string v4, "accessibility_captioning_preset"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 232
    :cond_6
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v4, p1, :cond_0

    .line 233
    const-string v4, "accessibility_captioning_edge_type"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setParent(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    .line 83
    return-void
.end method
