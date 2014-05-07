.class public Lcom/android/settings/framework/content/custom/property/HtcStringArrayProperty;
.super Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;
.source "HtcStringArrayProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/content/custom/property/HtcAbsProperty",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "candidateKey"
    .parameter "defaultValue"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic getCustomValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/content/custom/property/HtcStringArrayProperty;->getCustomValue(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomValue(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcStringArrayProperty;->mKey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, value:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcStringArrayProperty;->mCandidateKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/settings/framework/content/custom/property/HtcStringArrayProperty;->mCandidateKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcStringArrayProperty;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getStringArray(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/content/custom/property/HtcStringArrayProperty;->mDefaultValue:Ljava/lang/Object;

    .end local v0           #value:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .restart local v0       #value:[Ljava/lang/String;
    goto :goto_0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
