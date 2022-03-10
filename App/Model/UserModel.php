<?php

namespace App\Model;


use App\Config\ShardingInitConfig;


use PhpShardingPdo\Components\SoftDeleteTrait;
use PhpShardingPdo\Core\Model;

Class UserModel extends Model
{
    use SoftDeleteTrait;
    protected $tableName = 'user';
    protected $tableNameIndexConfig = [];
    protected $shardingInitConfigClass = ShardingInitConfig::class;
}