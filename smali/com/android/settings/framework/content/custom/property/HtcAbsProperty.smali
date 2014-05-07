.class abstract Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;
.super Ljava/lang/Object;
.source "HtcAbsProperty.java"

# interfaces
.implements Lcom/android/settings/framework/content/custom/property/HtcIProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mCached:Z

.field protected final mCandidateKey:Ljava/lang/String;

.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mKey:Ljava/lang/String;

.field protected mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCandidateKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mValue:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->getCustomValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mValue:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCached:Z

    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected abstract getCustomValue(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
