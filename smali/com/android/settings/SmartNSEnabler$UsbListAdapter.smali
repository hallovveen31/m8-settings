.class public Lcom/android/settings/SmartNSEnabler$UsbListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SmartNSEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmartNSEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field listItem:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/SmartNSEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmartNSEnabler;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter "objects"

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    .line 1332
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1333
    iput-object p4, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->listItem:[Ljava/lang/String;

    .line 1334
    iput-object p2, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    .line 1335
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "view"
    .parameter "viewgroup"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1338
    if-nez p2, :cond_0

    .line 1339
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1340
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f06004e

    invoke-virtual {v2, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1342
    .end local v2           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f090328

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 1343
    .local v1, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f09003d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRadioButton;

    .line 1344
    .local v3, tb:Lcom/htc/widget/HtcRadioButton;
    if-nez v3, :cond_2

    .line 1345
    const-string v5, "SmartNS_Enabler"

    const-string v6, "tb = null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$000(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1347
    const/4 p2, 0x0

    .line 1384
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 1350
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "sns_type"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1351
    .local v4, type:I
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$602(I)I

    .line 1353
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v5

    if-ne p1, v5, :cond_4

    .line 1354
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 1358
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->listItem:[Ljava/lang/String;

    aget-object v0, v5, p1

    .line 1359
    .local v0, item:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 1362
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    .line 1363
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1381
    :cond_3
    :goto_2
    instance-of v5, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v5

    const/high16 v6, 0x40b0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    move-object v5, p2

    .line 1382
    check-cast v5, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    goto :goto_0

    .line 1356
    .end local v0           #item:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_1

    .line 1364
    .restart local v0       #item:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 1365
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1366
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0751

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1368
    :cond_6
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0750

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1369
    :cond_7
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 1370
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0511

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1371
    :cond_8
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    .line 1372
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c074e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1373
    :cond_9
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    .line 1374
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0530

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1375
    :cond_a
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_b

    .line 1376
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0536

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1378
    :cond_b
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 1379
    iget-object v5, p0, Lcom/android/settings/SmartNSEnabler$UsbListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0551

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
