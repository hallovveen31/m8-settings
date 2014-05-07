.class public Lcom/android/settings/accessibility/PresetPreference;
.super Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;
.source "PresetPreference.java"


# static fields
.field private static final DEFAULT_FONT_SIZE:F = 96.0f


# instance fields
.field private final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->setDialogLayoutResource(I)V

    .line 39
    const v0, 0x7f0400d2

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->setListItemLayoutResource(I)V

    .line 41
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 43
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "index"

    .prologue
    .line 53
    const v4, 0x7f090096

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    .line 54
    .local v0, previewText:Lcom/android/internal/widget/SubtitleView;
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->getValueAt(I)I

    move-result v3

    .line 55
    .local v3, value:I
    iget-object v4, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v4, v0, v3}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/PresetPreference;->getPreviewFontSize(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 67
    .local v2, title:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 68
    const v4, 0x7f09003a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, summary:Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v1           #summary:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
