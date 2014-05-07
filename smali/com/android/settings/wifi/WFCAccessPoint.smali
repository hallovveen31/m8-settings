.class public Lcom/android/settings/wifi/WFCAccessPoint;
.super Lcom/android/settings/wifi/AccessPoint;
.source "WFCAccessPoint.java"


# static fields
.field private static final STATE_DISABLED:[I

.field private static final STATE_ENABLED:[I


# instance fields
.field private bByCursor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WFCAccessPoint;->STATE_ENABLED:[I

    .line 21
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/WFCAccessPoint;->STATE_DISABLED:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cur"
    .parameter "type"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    .line 46
    const v0, 0x7f0400d0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WFCAccessPoint;->setWidgetLayoutResource(I)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    .line 50
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WFCAccessPoint;->loadCursor(Landroid/database/Cursor;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wifi/WFCAccessPoint;->refresh()V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V
    .locals 1
    .parameter "context"
    .parameter "result"
    .parameter "type"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    .line 31
    const v0, 0x7f0400d0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WFCAccessPoint;->setWidgetLayoutResource(I)V

    .line 32
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1
    .parameter "context"
    .parameter "config"
    .parameter "type"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    .line 26
    const v0, 0x7f0400d0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WFCAccessPoint;->setWidgetLayoutResource(I)V

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 1
    .parameter "context"
    .parameter "savedState"
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    .line 37
    const v0, 0x7f0400d0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WFCAccessPoint;->setWidgetLayoutResource(I)V

    .line 39
    return-void
.end method

.method private loadCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cur"

    .prologue
    .line 59
    const-string v0, "ssid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->ssid:Ljava/lang/String;

    .line 60
    const-string v0, "bssid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bssid:Ljava/lang/String;

    .line 61
    const-string v0, "security"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->security:I

    .line 62
    const-string v0, "networkid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->networkId:I

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic checkCMCCSSID()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->checkCMCCSSID()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic checkCTSSID()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->checkCTSSID()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecurityString(Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCreateByDB()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    return v0
.end method

.method public bridge synthetic isFirstPriority()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->isFirstPriority()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReadOnly()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowEapErrUI()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->isShowEapErrUI()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic matches(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/AccessPoint;->matches(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->onBindView(Landroid/view/View;)V

    .line 89
    const v1, 0x7f0900b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, signal:Landroid/widget/ImageView;
    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-boolean v1, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WFCAccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 96
    sget-object v1, Lcom/android/settings/wifi/WFCAccessPoint;->STATE_ENABLED:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0
.end method

.method protected refresh()V
    .locals 5

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/wifi/WFCAccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, summary:Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/android/settings/wifi/WFCAccessPoint;->bByCursor:Z

    if-eqz v2, :cond_1

    .line 71
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/wifi/WFCAccessPoint;->blocked:Z

    if-eqz v2, :cond_2

    .line 72
    const v2, 0x7f0c07e9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WFCAccessPoint;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WFCAccessPoint;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WFCAccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFCAPNupdate summary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    return-void

    .line 74
    :cond_2
    const v2, 0x7f0c0d74

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public bridge synthetic saveWifiState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic setBlocked(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    return-void
.end method

.method public bridge synthetic setFirstPriority()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->setFirstPriority()V

    return-void
.end method
