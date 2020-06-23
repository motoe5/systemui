.class public Lcom/motorola/settingslib/drawer/DynamicTileUtils;
.super Ljava/lang/Object;
.source "DynamicTileUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    const-class v0, Lcom/motorola/settingslib/drawer/DynamicTileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->DEBUG:Z

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrderPriority(Lcom/android/settingslib/drawer/Tile;)I
    .locals 3
    .param p0, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settingslib/drawer/Tile;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "orderPriority"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 135
    :cond_0
    return v0
.end method

.method private static getRefTilePriority(Ljava/util/Map;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v3, 0x0

    .line 309
    .local v3, "refTilePriority":I
    const-string/jumbo v4, "orderRelativeToComp"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    const-string/jumbo v4, "orderRelativeToComp"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 312
    .local v0, "comp":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 313
    new-instance v1, Landroid/util/Pair;

    .line 314
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 316
    .local v2, "refTile":Lcom/android/settingslib/drawer/Tile;
    if-eqz v2, :cond_1

    .line 317
    iget v3, v2, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 324
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "refTile":Lcom/android/settingslib/drawer/Tile;
    :cond_0
    :goto_0
    return v3

    .line 319
    .restart local v0    # "comp":Landroid/content/ComponentName;
    .restart local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "refTile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    sget-object v4, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting the tile priority as 0. Couldn\'t find the referenced component in the cache : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseDynamicTileXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;)V
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 184
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 185
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 188
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "nodeName":Ljava/lang/String;
    const-string/jumbo v3, "dynamic-header"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    new-instance v3, Ljava/lang/RuntimeException;

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Xml must start with <dynamic-header> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    const-string/jumbo v5, " at "

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_2
    sget-boolean v3, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Reading xml attrs for dynamic-header"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    invoke-static {v0, p2, p3}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->readAttrs(Landroid/util/AttributeSet;Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;)V

    .line 223
    return-void
.end method

.method private static readAttrs(Landroid/util/AttributeSet;Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;)V
    .locals 9
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AttributeSet;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 229
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "value":Ljava/lang/CharSequence;
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_1
    sget-boolean v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dynamic-headerattr name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ; attr value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    const-string/jumbo v6, "orderAbove"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 238
    :cond_3
    const-string/jumbo v6, "orderAs"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 239
    const-string/jumbo v6, "orderAs"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v6, "orderRelativeToComp"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_4
    const-string/jumbo v6, "orderBelow"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "orderFirst"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 245
    :cond_5
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 246
    const-string/jumbo v6, "orderAs"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 245
    if-eqz v6, :cond_0

    .line 247
    const-string/jumbo v6, "orderAs"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_6
    const-string/jumbo v6, "orderLast"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "orderPriority"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    :try_start_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 253
    .local v4, "orderPriority":I
    if-eqz v4, :cond_0

    .line 254
    const-string/jumbo v6, "orderPriority"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 256
    .end local v4    # "orderPriority":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    .line 261
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/CharSequence;
    :cond_7
    invoke-static {p1, p2, v0}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->setTilePriorities(Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 262
    return-void
.end method

.method private static setTilePriorities(Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v4, 0x0

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "orderPriority":I
    const/4 v2, 0x0

    .line 268
    .local v2, "tilePriority":I
    const-string/jumbo v3, "orderAs"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    const-string/jumbo v3, "orderAs"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "orderAs":Ljava/lang/String;
    const-string/jumbo v3, "orderAbove"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    invoke-static {p1, p2}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->getRefTilePriority(Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v2

    .line 273
    const-string/jumbo v3, "orderPriority"

    .line 274
    const/4 v4, 0x1

    .line 273
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 295
    .end local v0    # "orderAs":Ljava/lang/String;
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 296
    sget-boolean v3, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updated tile priority is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    if-eqz v1, :cond_3

    .line 298
    iget-object v3, p0, Lcom/android/settingslib/drawer/Tile;->extras:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 299
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/drawer/Tile;->extras:Landroid/os/Bundle;

    .line 301
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/drawer/Tile;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "orderPriority"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    sget-boolean v3, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tile\'s order priority is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3
    return-void

    .line 270
    .restart local v0    # "orderAs":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "orderBelow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 277
    invoke-static {p1, p2}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->getRefTilePriority(Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v2

    .line 278
    const-string/jumbo v3, "orderPriority"

    .line 279
    const/4 v4, -0x1

    .line 278
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 270
    :cond_5
    const-string/jumbo v3, "orderFirst"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 282
    const/16 v2, 0x3e7

    .line 283
    const-string/jumbo v3, "orderPriority"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 270
    :cond_6
    const-string/jumbo v3, "orderLast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const/16 v2, -0x3e7

    .line 288
    const-string/jumbo v3, "orderPriority"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 292
    .end local v0    # "orderAs":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "orderPriority"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const-string/jumbo v3, "orderPriority"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0
.end method

.method public static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageManager;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    sget-boolean v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DynamicTileUtils.updateTileData : tile : [Title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 144
    iget-object v8, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 144
    const-string/jumbo v8, "] ; "

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 145
    const-string/jumbo v8, "[Intent: "

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 145
    iget-object v8, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 145
    const-string/jumbo v8, "]"

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-virtual {p4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 150
    :try_start_0
    iget-object v6, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 149
    invoke-virtual {p5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 151
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v3, p3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 153
    .local v3, "metaData":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 154
    const-string/jumbo v6, "com.motorola.extensions.header"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 153
    if-eqz v6, :cond_2

    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v6, "com.motorola.extensions.header"

    invoke-virtual {p3, p5, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 158
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_1

    .line 159
    invoke-static {v5, v4, p1, p2}, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->parseDynamicTileXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/settingslib/drawer/Tile;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_1
    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 169
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_0
    sget-boolean v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Done updating tile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    :cond_3
    const/4 v6, 0x1

    return v6

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error parsing dynamic-header :"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "metaData":Landroid/os/Bundle;
    .end local v5    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Couldn\'t find package/resource info"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x0

    return v6

    .line 161
    .restart local v3    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v2

    .line 162
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    sget-object v6, Lcom/motorola/settingslib/drawer/DynamicTileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error parsing dynamic-header :"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    if-eqz v4, :cond_2

    :try_start_6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 165
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v6

    .line 166
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 165
    :cond_5
    throw v6
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_1
.end method
