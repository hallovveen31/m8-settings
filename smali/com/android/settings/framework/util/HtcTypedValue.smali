.class public Lcom/android/settings/framework/util/HtcTypedValue;
.super Landroid/util/TypedValue;
.source "HtcTypedValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    return-void
.end method

.method public static complexToDimensionPixelOffset(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcTypedValue;->resolveAttribute(Landroid/content/Context;I)Lcom/android/settings/framework/util/HtcTypedValue;

    move-result-object v1

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2, v0}, Lcom/android/settings/framework/util/HtcTypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2
.end method

.method public static complexToDimensionPixelSize(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcTypedValue;->resolveAttribute(Landroid/content/Context;I)Lcom/android/settings/framework/util/HtcTypedValue;

    move-result-object v1

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2, v0}, Lcom/android/settings/framework/util/HtcTypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2
.end method

.method public static resolveAttribute(Landroid/content/Context;I)Lcom/android/settings/framework/util/HtcTypedValue;
    .locals 4

    new-instance v1, Lcom/android/settings/framework/util/HtcTypedValue;

    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcTypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
