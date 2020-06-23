.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/TileUtils$1;,
        Lcom/android/settingslib/drawer/TileUtils$2;
    }
.end annotation


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$1;-><init>()V

    .line 547
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    .line 563
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$2;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$2;-><init>()V

    .line 562
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryKey"    # Ljava/lang/String;
    .param p2, "categoryDefinedInManifest"    # Z

    .prologue
    const/4 v6, 0x0

    .line 262
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 263
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 264
    if-nez p2, :cond_0

    .line 265
    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 268
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 269
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 270
    const/4 v5, 0x0

    return-object v5

    .line 272
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolved$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 273
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_2

    .line 277
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 278
    const-string/jumbo v5, "com.android.settings"

    .line 279
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 278
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 278
    :goto_1
    iput v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    goto :goto_0

    :cond_3
    move v5, v6

    .line 279
    goto :goto_1

    .line 283
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-object v0
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "categoryDefinedInManifest"    # Z
    .param p3, "extraAction"    # Ljava/lang/String;
    .param p4, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "cache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 200
    .local v16, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v15, 0x1

    .line 202
    .local v15, "setup":Z
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v7, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 204
    .local v21, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v21 .. v21}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 206
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 208
    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 210
    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    .line 211
    const-string/jumbo v6, "com.android.settings.category.wireless"

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    .line 210
    invoke-static/range {v2 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 212
    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    .line 213
    const-string/jumbo v6, "com.android.settings.category.device"

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    .line 212
    invoke-static/range {v2 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 215
    :cond_1
    if-eqz v15, :cond_0

    .line 216
    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 218
    if-nez p2, :cond_0

    .line 219
    const-string/jumbo v4, "com.android.settings.action.IA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 221
    if-eqz p3, :cond_0

    .line 222
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_1

    .line 200
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v15    # "setup":Z
    .end local v20    # "user$iterator":Ljava/util/Iterator;
    .end local v21    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "setup":Z
    goto/16 :goto_0

    .line 229
    .restart local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .restart local v20    # "user$iterator":Ljava/util/Iterator;
    .restart local v21    # "userManager":Landroid/os/UserManager;
    :cond_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v14, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "tile$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/drawer/Tile;

    .line 231
    .local v18, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 232
    .local v12, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v12, :cond_5

    .line 233
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v12

    .line 234
    if-nez v12, :cond_4

    .line 235
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    :cond_4
    iget-object v2, v12, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v14, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_2

    .line 242
    .end local v12    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v18    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    .local v11, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "category$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 244
    .restart local v12    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, v12, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    sget-object v4, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 246
    .end local v12    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    :cond_7
    sget-object v2, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    return-object v11
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .param p7, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p6

    move-object/from16 v8, p7

    .line 290
    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 292
    return-void
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .param p7, "usePriority"    # Z
    .param p8, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v3, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 300
    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :cond_0
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p7

    .line 302
    invoke-static/range {v1 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 304
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "usePriority"    # Z
    .param p7, "checkCategory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 311
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v3, 0x80

    .line 310
    invoke-virtual {v6, p2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 312
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "resolved$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 313
    .local v10, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v1, v10, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v1, :cond_0

    .line 317
    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 318
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 319
    .local v9, "metaData":Landroid/os/Bundle;
    move-object/from16 v7, p4

    .line 322
    .local v7, "categoryKey":Ljava/lang/String;
    if-eqz p7, :cond_3

    if-eqz v9, :cond_1

    const-string/jumbo v1, "com.android.settings.category"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 323
    :cond_1
    if-nez p4, :cond_3

    .line 324
    const-string/jumbo v3, "TileUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " for intent "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 325
    const-string/jumbo v5, " missing metadata "

    .line 324
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 326
    if-nez v9, :cond_2

    const-string/jumbo v1, ""

    .line 324
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_2
    const-string/jumbo v1, "com.android.settings.category"

    goto :goto_1

    .line 329
    :cond_3
    const-string/jumbo v1, "com.android.settings.category"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 332
    new-instance v8, Landroid/util/Pair;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 333
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 332
    invoke-direct {v8, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 335
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    if-nez v2, :cond_5

    .line 336
    new-instance v2, Lcom/android/settingslib/drawer/Tile;

    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-direct {v2}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    .line 337
    .restart local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 337
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 339
    iput-object v7, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 340
    if-eqz p6, :cond_7

    iget v1, v10, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_2
    iput v1, v2, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 341
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v1, v2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 342
    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v2, v4, v1, v6}, Lcom/android/settingslib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    .line 351
    const-string/jumbo v1, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 353
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, p0

    move-object/from16 v3, p3

    .line 352
    invoke-static/range {v1 .. v6}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    .line 358
    :cond_4
    move-object/from16 v0, p3

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_5
    iget-object v1, v2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 361
    iget-object v1, v2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_6
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 340
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 367
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "categoryKey":Ljava/lang/String;
    .end local v8    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "metaData":Landroid/os/Bundle;
    .end local v10    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_8
    return-void
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 372
    const/4 v3, 0x0

    .line 373
    .local v3, "icon":I
    const/4 v4, 0x0

    .line 374
    .local v4, "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 375
    .local v10, "title":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 376
    .local v9, "summary":Ljava/lang/String;
    const/4 v5, 0x0

    .line 377
    .local v5, "keyHint":Ljava/lang/String;
    const/4 v11, 0x0

    .line 382
    .local v11, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 381
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 383
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 385
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 386
    const-string/jumbo v12, "com.android.settings.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 387
    const-string/jumbo v12, "com.android.settings.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 389
    :cond_0
    const/4 v8, 0x0

    .line 390
    .local v8, "resId":I
    const-string/jumbo v12, "com.android.settings.title.resid"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 391
    const-string/jumbo v12, "com.android.settings.title.resid"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 392
    if-eqz v8, :cond_1

    .line 393
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 398
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    if-nez v8, :cond_2

    const-string/jumbo v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 399
    const-string/jumbo v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_7

    .line 400
    const-string/jumbo v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 405
    :cond_2
    :goto_0
    const-string/jumbo v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 406
    const-string/jumbo v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_8

    .line 407
    const-string/jumbo v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 412
    .end local v9    # "summary":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v12, "com.android.settings.keyhint"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 413
    const-string/jumbo v12, "com.android.settings.keyhint"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_9

    .line 414
    const-string/jumbo v12, "com.android.settings.keyhint"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 426
    .end local v5    # "keyHint":Ljava/lang/String;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "resId":I
    :cond_4
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 427
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 434
    :cond_5
    if-nez v3, :cond_6

    .line 435
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 437
    :cond_6
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v12, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 441
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 442
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 444
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 445
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 444
    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 447
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    .line 449
    const/4 v12, 0x1

    return v12

    .line 402
    .restart local v5    # "keyHint":Ljava/lang/String;
    .restart local v6    # "metaData":Landroid/os/Bundle;
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v8    # "resId":I
    .restart local v9    # "summary":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string/jumbo v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 409
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_8
    const-string/jumbo v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "summary":Ljava/lang/String;
    goto :goto_1

    .line 416
    .end local v9    # "summary":Ljava/lang/String;
    :cond_9
    const-string/jumbo v12, "com.android.settings.keyhint"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .local v5, "keyHint":Ljava/lang/String;
    goto :goto_2

    .line 452
    .end local v3    # "icon":I
    .end local v4    # "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "keyHint":Ljava/lang/String;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "resId":I
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_a
    const/4 v12, 0x0

    return v12

    .line 420
    .restart local v3    # "icon":I
    .restart local v4    # "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v5, "keyHint":Ljava/lang/String;
    .restart local v11    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_2
.end method
