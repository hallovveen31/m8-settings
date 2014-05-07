.class public abstract Lcom/android/settings/framework/preference/accessibility/HtcTypeSelectionPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "HtcTypeSelectionPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getPreviewFontSize(Landroid/content/Context;)F
    .locals 6

    const/high16 v0, 0x42c0

    const/high16 v1, 0x43a0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x42c0

    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43a0

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    return v3
.end method
