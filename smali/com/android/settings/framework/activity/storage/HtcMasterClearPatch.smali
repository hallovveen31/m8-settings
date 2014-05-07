.class public final Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;
.super Ljava/lang/Object;
.source "HtcMasterClearPatch.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescriotion1:Landroid/widget/TextView;

.field private mDescriotion2:Landroid/widget/TextView;

.field private mEraseStorageOption:Landroid/widget/TextView;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInternalStorageContainer:Landroid/view/View;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 45
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 210
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateExternalStorageContainer()V

    return-void
.end method

.method private updateEraseStorageOption()V
    .locals 6

    .prologue
    .line 102
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 103
    const-string v4, "invoking updateEraseStorageOption()"

    invoke-direct {p0, v4}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mEraseStorageOption:Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 107
    sget-object v4, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->TAG:Ljava/lang/String;

    const-string v5, "\'this.mEraseStorageOption\' should not be null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 112
    .local v2, res:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 114
    .local v3, resId:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalSdCardStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    const v3, 0x7f0c02cd

    .line 138
    :goto_1
    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, option:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mEraseStorageOption:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_1

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v1           #option:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    const v3, 0x7f0c02cb

    goto :goto_1

    .line 125
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalSdCardStorage()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 128
    const v3, 0x7f0c02cc

    goto :goto_1

    .line 134
    :cond_5
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mEraseStorageOption:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 135
    .local v0, container:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateExternalStorageContainer()V
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, state:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "invoking updateExternalStorageContainer()"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mExternalStorageContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 162
    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    :cond_1
    const/4 v0, 0x0

    .line 169
    .local v0, enabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mExternalStorageContainer:Landroid/view/View;

    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 172
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mExternalStorageContainer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_5

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    .line 177
    .end local v0           #enabled:Z
    :cond_2
    return-void

    .line 166
    :cond_3
    const/4 v0, 0x1

    .line 167
    .restart local v0       #enabled:Z
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->isSdCardEncrypted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v0, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 173
    :cond_5
    const-string v2, "disabled"

    goto :goto_1
.end method

.method private updateInternalStorageContainer()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 184
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 185
    const-string v5, "invoking updateInternalStorageContainer()"

    invoke-direct {p0, v5}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mInternalStorageContainer:Landroid/view/View;

    if-nez v5, :cond_2

    .line 189
    const-string v3, "mInternalStorageContainer doesn\'t exist."

    invoke-direct {p0, v3}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->Log(Ljava/lang/String;)V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 194
    .local v1, isExtStorageEmulated:Z
    const-string v5, ""

    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    .line 198
    .local v2, isExtStorageEncrypted:Z
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 199
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mInternalStorageContainer:Landroid/view/View;

    const v6, 0x7f09015a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 201
    .local v0, checkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 204
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mInternalStorageContainer:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #checkbox:Lcom/htc/widget/HtcCheckBox;
    .end local v2           #isExtStorageEncrypted:Z
    :cond_4
    move v2, v4

    .line 194
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 74
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    .line 80
    const v0, 0x7f090156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mEraseStorageOption:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f090158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mInternalStorageContainer:Landroid/view/View;

    .line 84
    const v0, 0x7f09015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mExternalStorageContainer:Landroid/view/View;

    .line 87
    const v0, 0x7f090151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mDescriotion1:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f090152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mDescriotion2:Landroid/widget/TextView;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateEraseStorageOption()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateExternalStorageContainer()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateInternalStorageContainer()V

    .line 96
    return-void
.end method
