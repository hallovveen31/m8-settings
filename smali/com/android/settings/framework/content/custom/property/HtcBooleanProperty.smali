.class public Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;
.super Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;
.source "HtcBooleanProperty.java"


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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getCustomValue(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mKey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getTriState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCandidateKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCandidateKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v2, v1}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic getCustomValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;->getCustomValue(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
