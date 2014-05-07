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
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;,"Lcom/android/settings/framework/content/custom/property/HtcAbsProperty<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "candidateKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;,"Lcom/android/settings/framework/content/custom/property/HtcAbsProperty<TT;>;"
    .local p3, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mKey:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCandidateKey:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mDefaultValue:Ljava/lang/Object;

    .line 63
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

    .prologue
    .line 67
    .local p0, this:Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;,"Lcom/android/settings/framework/content/custom/property/HtcAbsProperty<TT;>;"
    iget-boolean v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCached:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mValue:Ljava/lang/Object;

    .line 77
    :goto_0
    return-object v1

    .line 73
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 75
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->getCustomValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mValue:Ljava/lang/Object;

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->mCached:Z

    .line 77
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

    .prologue
    .line 89
    .local p0, this:Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;,"Lcom/android/settings/framework/content/custom/property/HtcAbsProperty<TT;>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/content/custom/property/HtcAbsProperty;->get()Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, value:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
