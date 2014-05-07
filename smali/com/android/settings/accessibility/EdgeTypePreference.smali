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
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValues([I)V

    .line 45
    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 46
    const v1, 0x7f04004d

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setDialogLayoutResource(I)V

    .line 47
    const v1, 0x7f0400d2

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setListItemLayoutResource(I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "index"

    .prologue
    .line 57
    const v4, 0x7f090096

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    .line 59
    .local v0, preview:Lcom/android/internal/widget/SubtitleView;
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    .line 60
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/EdgeTypePreference;->getPreviewFontSize(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/EdgeTypePreference;->getValueAt(I)I

    move-result v3

    .line 70
    .local v3, value:I
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    .line 71
    const/high16 v4, -0x100

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/EdgeTypePreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 74
    .local v2, title:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 75
    const v4, 0x7f09003a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, summary:Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v1           #summary:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

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
