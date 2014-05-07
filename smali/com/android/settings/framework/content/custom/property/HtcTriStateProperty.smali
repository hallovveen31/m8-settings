.class public Lcom/android/settings/framework/content/custom/property/HtcTriStateProperty;
.super Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;
.source "HtcTriStateProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/content/custom/property/HtcAbsProperty",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "candidateKey"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getCustomValue(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcTriStateProperty;->mKey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getTriState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 58
    .local v0, value:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcTriStateProperty;->mCandidateKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcTriStateProperty;->mCandidateKey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getTriState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getCustomValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/content/custom/property/HtcTriStateProperty;->getCustomValue(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
