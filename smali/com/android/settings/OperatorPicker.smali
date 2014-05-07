.class public Lcom/android/settings/OperatorPicker;
.super Lcom/android/settings/framework/app/HtcInternalListActivity;
.source "OperatorPicker.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# static fields
.field public static DBG:Z = false

.field public static final OPERATER_TYPE:Ljava/lang/String; = "Type"

.field public static final PROPERTY_APN_MVNO_SORT_ORDER:Ljava/lang/String; = "ro.apn.mvno.sort_order"

.field public static final SLOT_TYPE:Ljava/lang/String; = "Slot"

.field static final TAG:Ljava/lang/String; = "OperatorPicker"


# instance fields
.field private mIsInForeground:Z

.field protected mOperators:[Ljava/lang/String;

.field public mSlot:I

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/OperatorPicker;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OperatorPicker;->mIsInForeground:Z

    return-void
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 247
    sget-boolean v3, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-eqz v3, :cond_9

    .line 248
    :cond_0
    const-string v2, "gsm.sim.operator.numeric"

    .line 249
    .local v2, keyString:Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/OperatorPicker;->mType:I

    if-ne v3, v6, :cond_2

    .line 250
    const-string v2, "gsm.cdma.uim.operator.numeric"

    .line 279
    :cond_1
    :goto_0
    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .end local v2           #keyString:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 251
    .restart local v2       #keyString:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/settings/OperatorPicker;->mType:I

    if-ne v3, v7, :cond_4

    .line 253
    iget v3, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    if-ne v3, v6, :cond_3

    .line 254
    const-string v2, "gsm.sub.icc.operator.numeric"

    goto :goto_0

    .line 256
    :cond_3
    const-string v2, "gsm.gsm.sim.operator.numeric"

    goto :goto_0

    .line 259
    :cond_4
    iget v3, p0, Lcom/android/settings/OperatorPicker;->mType:I

    if-ne v3, v8, :cond_5

    .line 260
    const-string v2, "gsm.sub.icc.operator.numeric"

    goto :goto_0

    .line 262
    :cond_5
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/OperatorPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 263
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v1

    .line 264
    .local v1, curMobileDataPhoneType:I
    const-string v3, "OperatorPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curMobileDataPhoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-ne v1, v7, :cond_7

    .line 267
    iget v3, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    if-ne v3, v6, :cond_6

    .line 268
    const-string v2, "gsm.sub.icc.operator.numeric"

    goto :goto_0

    .line 270
    :cond_6
    const-string v2, "gsm.gsm.sim.operator.numeric"

    goto :goto_0

    .line 273
    :cond_7
    if-ne v1, v6, :cond_8

    .line 274
    const-string v2, "gsm.cdma.uim.operator.numeric"

    goto :goto_0

    .line 275
    :cond_8
    if-ne v1, v8, :cond_1

    .line 276
    const-string v2, "gsm.sub.icc.operator.numeric"

    goto :goto_0

    .line 281
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #curMobileDataPhoneType:I
    .end local v2           #keyString:Ljava/lang/String;
    :cond_9
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getItemLayout()I
    .locals 1

    .prologue
    .line 215
    const v0, 0x7f040071

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f040070

    return v0
.end method

.method protected getOperatorAdapter()Landroid/widget/ListAdapter;
    .locals 14

    .prologue
    .line 118
    const-string v11, "OperatorPicker"

    const-string v12, "fillList"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-boolean v11, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-eqz v11, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 123
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "Type"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/OperatorPicker;->mType:I

    .line 126
    const-string v11, "Slot"

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    .line 127
    sget-boolean v11, Lcom/android/settings/OperatorPicker;->DBG:Z

    if-eqz v11, :cond_1

    .line 128
    const-string v11, "OperatorPicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPhoneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/OperatorPicker;->mType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "numeric = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/settings/OperatorPicker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, where:Ljava/lang/String;
    const-string v8, "name ASC"

    .line 155
    .local v8, sortOrder:Ljava/lang/String;
    const-string v11, "ro.apn.mvno.sort_order"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 156
    const/4 v8, 0x0

    .line 159
    :cond_2
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 160
    .local v9, uri:Landroid/net/Uri;
    sget-boolean v11, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-nez v11, :cond_3

    sget-boolean v11, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-eqz v11, :cond_4

    .line 161
    :cond_3
    iget v11, p0, Lcom/android/settings/OperatorPicker;->mType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 162
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 175
    :cond_4
    :goto_0
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "operator"

    aput-object v13, v11, v12

    invoke-virtual {p0, v9, v11, v10, v8}, Lcom/android/settings/OperatorPicker;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 180
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v7, opnamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_c

    .line 182
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_b

    .line 185
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, id:Ljava/lang/String;
    const-string v11, "operator"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, op:Ljava/lang/String;
    const/4 v5, 0x0

    .line 189
    .local v5, isExisted:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_5

    .line 190
    if-eqz v6, :cond_a

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 191
    const/4 v5, 0x1

    .line 196
    :cond_5
    if-nez v5, :cond_6

    if-eqz v6, :cond_6

    .line 197
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 163
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #i:I
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #isExisted:Z
    .end local v6           #op:Ljava/lang/String;
    .end local v7           #opnamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget v11, p0, Lcom/android/settings/OperatorPicker;->mType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 165
    iget v11, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 166
    const-string v11, "content://subgsmapn/carriers"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 168
    :cond_8
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 171
    :cond_9
    iget v11, p0, Lcom/android/settings/OperatorPicker;->mType:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    .line 172
    const-string v11, "content://subgsmapn/carriers"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 189
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v2       #i:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v5       #isExisted:Z
    .restart local v6       #op:Ljava/lang/String;
    .restart local v7       #opnamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 201
    .end local v2           #i:I
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #isExisted:Z
    .end local v6           #op:Ljava/lang/String;
    :cond_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/settings/OperatorPicker;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 205
    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    .line 206
    iget-object v11, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    .line 208
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getItemLayout()I

    move-result v11

    const v12, 0x7f0900dc

    iget-object v13, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    invoke-direct {v0, p0, v11, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 211
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f0c05c3

    invoke-virtual {p0, v0}, Lcom/android/settings/OperatorPicker;->setTitle(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getOperatorAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OperatorPicker;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 83
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    long-to-int v2, p4

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/settings/OperatorPicker;->mType:I

    iget v3, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->finish()V

    .line 239
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->onPause()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OperatorPicker;->mIsInForeground:Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->onResume()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OperatorPicker;->mIsInForeground:Z

    .line 95
    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->requestFocus()Z

    .line 102
    return-void
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/settings/OperatorPicker;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/OperatorPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method
