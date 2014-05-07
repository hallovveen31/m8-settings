.class final Lcom/a/a/a/a$4;
.super Landroid/telephony/PhoneStateListener;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/a;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter

    .prologue
    .line 531
    invoke-static {}, Lcom/a/a/a/a;->e()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-static {}, Lcom/a/a/a/a;->e()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/a/a/a/a;->a(Landroid/telephony/CellLocation;Ljava/util/List;)V

    .line 536
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 542
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 551
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-static {v0}, Lcom/a/a/a/a;->a(I)I

    .line 552
    invoke-static {}, Lcom/a/a/a/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/a/a/a/a;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 553
    invoke-static {}, Lcom/a/a/a/a;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/e;

    invoke-static {}, Lcom/a/a/a/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/e;->c(I)V

    .line 561
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 562
    return-void

    .line 554
    :cond_1
    invoke-static {}, Lcom/a/a/a/a;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/a/a/a/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/a/a/a/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    invoke-static {}, Lcom/a/a/a/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/c;->f(I)V

    goto :goto_0
.end method
