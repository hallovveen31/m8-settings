.class Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/htc/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PremiumSmsSelectionListener"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V
    .locals 0
    .parameter "packageName"
    .parameter "smsManager"

    .prologue
    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->mPackageName:Ljava/lang/String;

    .line 1445
    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 1446
    return-void
.end method

.method private setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 1470
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1473
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1451
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    if-ltz p3, :cond_2

    const/4 v0, 0x3

    if-ge p3, v0, :cond_2

    .line 1452
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1453
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected premium SMS policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->mPackageName:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1461
    :cond_1
    :goto_0
    return-void

    .line 1457
    :cond_2
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 1458
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown premium SMS policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1466
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    return-void
.end method
