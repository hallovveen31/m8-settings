.class public Lcom/android/settings/DeviceAdminSettings;
.super Lcom/android/settings/framework/app/HtcInternalListFragment;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    }
.end annotation


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field static final TAG:Ljava/lang/String; = "DeviceAdminSettings"


# instance fields
.field final mActiveAdmins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mMDMAdminLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminSettings;->mMDMAdminLocked:Z

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceAdminSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminSettings;->mMDMAdminLocked:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 87
    const v0, 0x7f040043

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo;

    .line 177
    .local v1, dpi:Landroid/app/admin/DeviceAdminInfo;
    const-string v8, "ro.3LM.extended"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_0

    move v3, v6

    .line 178
    .local v3, isKddi:Z
    :goto_0
    if-eqz v3, :cond_1

    move v0, v6

    .line 179
    .local v0, defaultLocked:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "admin_locked"

    invoke-static {v8, v9, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v4, v6

    .line 183
    .local v4, lockAdmin:Z
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.threelm.dm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 186
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0c0a57

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 196
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_3
    return-void

    .end local v0           #defaultLocked:I
    .end local v3           #isKddi:Z
    .end local v4           #lockAdmin:Z
    :cond_0
    move v3, v7

    .line 177
    goto :goto_0

    .restart local v3       #isKddi:Z
    :cond_1
    move v0, v7

    .line 178
    goto :goto_1

    .restart local v0       #defaultLocked:I
    :cond_2
    move v4, v7

    .line 179
    goto :goto_2

    .line 192
    .restart local v4       #lockAdmin:Z
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v6, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceAdminSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    .line 94
    return-void
.end method

.method updateList()V
    .locals 19

    .prologue
    .line 98
    invoke-static {}, Lcom/android/settings/framework/util/HtcMdmUtil;->isMDMApiSupported()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/admin/DevicePolicyManager;->getDeviceAdminRestrictedStatus(Landroid/content/ComponentName;)I

    move-result v16

    if-nez v16, :cond_1

    .line 100
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminSettings;->mMDMAdminLocked:Z

    .line 106
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->clear()V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v6

    .line 108
    .local v6, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_2

    .line 109
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 102
    .end local v6           #cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v9           #i:I
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminSettings;->mMDMAdminLocked:Z

    goto :goto_0

    .line 114
    .restart local v6       #cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x80

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_3

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 124
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    .local v2, activeAdminsNotInAvail:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v13, ri:Landroid/content/pm/ResolveInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v14, riComponentName:Landroid/content/ComponentName;
    invoke-interface {v2, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 130
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    .end local v14           #riComponentName:Landroid/content/ComponentName;
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .end local v3           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v4, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 133
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 134
    .local v15, unlistedActiveAdmin:Landroid/content/ComponentName;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 137
    .local v12, resolved:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_5

    .line 138
    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .end local v12           #resolved:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15           #unlistedActiveAdmin:Landroid/content/ComponentName;
    :cond_6
    move-object v3, v4

    .line 143
    .end local v4           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .restart local v3       #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    const/4 v9, 0x0

    .restart local v9       #i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, count:I
    :goto_4
    if-ge v9, v5, :cond_d

    .line 144
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 146
    .restart local v13       #ri:Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v7, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0, v13}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 147
    .local v7, dpi:Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v16

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 149
    :cond_8
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "com.threelm.dm"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "com.redbend.vdmc"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 151
    :cond_9
    sget-boolean v16, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v16, :cond_a

    .line 152
    const-string v16, "DeviceAdminSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "skip device admin: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v7           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 156
    .restart local v7       #dpi:Landroid/app/admin/DeviceAdminInfo;
    :cond_b
    sget-boolean v16, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v16, :cond_c

    .line 157
    const-string v16, "DeviceAdminSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "add device admin: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    .line 162
    .end local v7           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :catch_0
    move-exception v8

    .line 163
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v16, "DeviceAdminSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipping "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 164
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v8

    .line 165
    .local v8, e:Ljava/io/IOException;
    const-string v16, "DeviceAdminSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Skipping "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 169
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v16

    new-instance v17, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    return-void
.end method
