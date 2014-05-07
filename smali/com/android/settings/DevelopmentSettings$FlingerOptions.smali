.class Lcom/android/settings/DevelopmentSettings$FlingerOptions;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingerOptions"
.end annotation


# instance fields
.field public mDisableOverlays:I

.field public mEnableGL:I

.field public mShowBackground:I

.field public mShowCpu:I

.field public mShowUpdates:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DevelopmentSettings$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings$FlingerOptions;-><init>()V

    return-void
.end method
