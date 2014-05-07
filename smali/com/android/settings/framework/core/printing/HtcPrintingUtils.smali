.class public Lcom/android/settings/framework/core/printing/HtcPrintingUtils;
.super Ljava/lang/Object;
.source "HtcPrintingUtils.java"


# static fields
.field private static sLastPrintingServiceSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->sLastPrintingServiceSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastPrintingServiceSize()I
    .locals 1

    sget v0, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->sLastPrintingServiceSize:I

    return v0
.end method

.method public static getPrintingServices(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.printservice.PrintService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x84

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setLastPrintingServiceSize(I)V
    .locals 0

    sput p0, Lcom/android/settings/framework/core/printing/HtcPrintingUtils;->sLastPrintingServiceSize:I

    return-void
.end method
