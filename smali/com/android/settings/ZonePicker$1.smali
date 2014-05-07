.class final Lcom/android/settings/ZonePicker$1;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ZonePicker;->setHTCListViewItemStyle(Landroid/widget/SimpleAdapter;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sortedList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings/ZonePicker$1;->val$sortedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 358
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    move-object v5, p2

    .line 359
    check-cast v5, Ljava/lang/String;

    .line 360
    .local v5, zoneName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 361
    .local v4, sencodaryText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ZonePicker$1;->val$sortedList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 364
    const/4 v4, 0x0

    .line 366
    iget-object v6, p0, Lcom/android/settings/ZonePicker$1;->val$sortedList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 367
    .local v1, element:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 368
    const-string v6, "gmt"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #sencodaryText:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 372
    .end local v1           #element:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #sencodaryText:Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 373
    const-string v6, "ZonePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'s sencodary text in zone list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, p1

    .line 376
    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 377
    .local v3, itemView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 379
    const/4 v6, 0x1

    .line 381
    .end local v0           #count:I
    .end local v2           #idx:I
    .end local v3           #itemView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v4           #sencodaryText:Ljava/lang/String;
    .end local v5           #zoneName:Ljava/lang/String;
    :goto_1
    return v6

    .line 362
    .restart local v0       #count:I
    .restart local v1       #element:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #idx:I
    .restart local v4       #sencodaryText:Ljava/lang/String;
    .restart local v5       #zoneName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v0           #count:I
    .end local v1           #element:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #idx:I
    .end local v4           #sencodaryText:Ljava/lang/String;
    .end local v5           #zoneName:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
