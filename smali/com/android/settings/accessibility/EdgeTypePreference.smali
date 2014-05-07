.class public Lcom/android/settings/accessibility/EdgeTypePreference;
.super Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;
.source "EdgeTypePreference.java"


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = 0x0

.field private static final DEFAULT_EDGE_COLOR:I = -0x1000000

.field private static final DEFAULT_FONT_SIZE:F = 96.0f

.field private static final DEFAULT_FOREGROUND_COLOR:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    const v1, 0x7f04004d

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->setDialogLayoutResource(I)V

    const v1, 0x7f0400d2

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 5

    const v4, 0x7f090096

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;->getPreviewFontSize(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    const/high16 v4, -0x100

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    const v4, 0x7f09003a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

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
