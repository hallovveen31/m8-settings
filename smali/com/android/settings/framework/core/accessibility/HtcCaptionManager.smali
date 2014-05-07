.class public Lcom/android/settings/framework/core/accessibility/HtcCaptionManager;
.super Ljava/lang/Object;
.source "HtcCaptionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontFamilyList(Landroid/content/Context;)[Lcom/android/settings/framework/core/accessibility/HtcFontFamily;
    .locals 10
    .parameter "context"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, defaultNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, defaultValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, htcNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, htcValues:[Ljava/lang/CharSequence;
    array-length v6, v0

    array-length v7, v2

    add-int/2addr v6, v7

    new-array v5, v6, [Lcom/android/settings/framework/core/accessibility/HtcFontFamily;

    .line 48
    .local v5, list:[Lcom/android/settings/framework/core/accessibility/HtcFontFamily;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_0

    .line 49
    new-instance v6, Lcom/android/settings/framework/core/accessibility/HtcFontFamily;

    aget-object v7, v0, v4

    aget-object v8, v1, v4

    invoke-direct {v6, v7, v8}, Lcom/android/settings/framework/core/accessibility/HtcFontFamily;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v6, v5, v4

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 52
    array-length v6, v0

    add-int/2addr v6, v4

    new-instance v7, Lcom/android/settings/framework/core/accessibility/HtcFontFamily;

    aget-object v8, v2, v4

    aget-object v9, v3, v4

    invoke-direct {v7, v8, v9}, Lcom/android/settings/framework/core/accessibility/HtcFontFamily;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v7, v5, v6

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 56
    :cond_1
    return-object v5
.end method
